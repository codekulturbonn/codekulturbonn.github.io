import shortcodes
import ivy
import os

@shortcodes.register('venue')
def venue_shortcode(node, content, pargs, kwargs):
    if pargs:
        venue = ivy.nodes.node('@root/venues/' + pargs[0])
        if venue != None:
            return '[' + venue['title'] + '](' + venue.url + ')'
    return ''

@ivy.filters.register('file_text')
def venue_meta_link(text, meta):
    if 'venue' in meta:
        venue = ivy.nodes.node('@root/venues/' + meta['venue'])
        if venue != None:
            location = ''
            if venue['location'] != 'Bonn':
                location += ', ' + venue['location']
            meta['venue_title'] = venue['title'] + location
            meta['venue_link'] = '<a rel="nofollow" href="' + venue.url + '">' + venue['title'] + '</a>' + location
    return text

@ivy.events.register('render_page')
def venue_events(page):
    venue = page['node']
    if page['is_homepage'] or len(venue.path) < 2 or venue.path[0] != 'venues':
        return

    venue['events'] = [
        event 
            for event in ivy.nodes.node('@root/events').children
            if 'venue' in event and event['venue'] == venue.path[1] 
    ]

@ivy.events.register('render_page')
def venue_sort_by_title(page):
    venue = page['node']
    if page['is_homepage'] or len(venue.path) > 1 or venue.path[0] != 'venues':
        return

    venue['sorted_children'] = sorted(
        venue.children,
        key=lambda v: v.meta['title']
    )
