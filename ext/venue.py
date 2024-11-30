import shortcodes
import ark
import os

@shortcodes.register('venue')
def venue_shortcode(node, content, pargs, kwargs):
    if pargs:
        venue = ark.nodes.node('@root/venues/' + pargs[0])
        if venue != None:
            return '[' + venue['title'] + '](' + venue.url + ')'
    return ''

@ark.filters.register(ark.filters.Filter.FILE_TEXT)
def venue_meta_link(text, meta):
    if 'venue' in meta:
        venue = ark.nodes.node('@root/venues/' + meta['venue'])
        if venue != None:
            location = ''
            if venue['location'] != 'Bonn':
                location += ', ' + venue['location']
            meta['venue_title'] = venue['title'] + location
            meta['venue_link'] = '<a rel="nofollow" href="' + venue.url + '">' + venue['title'] + '</a>' + location
    return text

@ark.events.register(ark.events.Event.RENDER_PAGE)
def venue_events(page):
    venue = page['node']
    if page['is_homepage'] or len(venue.path) < 2 or venue.path[0] != 'venues':
        return

    venue['events'] = [
        event 
            for event in ark.nodes.node('@root/events').children
            if 'venue' in event and event['venue'] == venue.path[1] 
    ]

@ark.events.register(ark.events.Event.RENDER_PAGE)
def venue_sort_by_title(page):
    venue = page['node']
    if page['is_homepage'] or len(venue.path) > 1 or venue.path[0] != 'venues':
        return

    venue['sorted_children'] = sorted(
        venue.children,
        key=lambda v: v.meta['title']
    )
