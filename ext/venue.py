import shortcodes
import ivy
import os

@shortcodes.register('venue')
def venue_shortcode(node, content, pargs, kwargs):
    if pargs:
        venue = ivy.nodes.node('venues', pargs[0])
        if venue != None:
            return '[' + venue['title'] + '](' + venue.url + ')'
    return ''

@ivy.hooks.register('file_text')
def venue_meta_link(text, meta):
    if 'venue' in meta:
        venue = ivy.nodes.node('venues', meta['venue'])
        if venue != None:
            location = ''
            if venue['location'] != 'Bonn':
                location += ', ' + venue['location']
            meta['venue_link'] = '<a href="' + venue.url + '">' + venue['title'] + '</a>' + location
    return text

@ivy.hooks.register('init_node')
def venue_events(venue):
    if len(venue.path) < 2 or venue.path[0] != 'venues':
        return

    venue['events'] = [
        event 
            for event in ivy.nodes.node('events').childlist
            if 'venue' in event and event['venue'] == venue.path[1] 
    ]
