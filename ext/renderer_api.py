import json
import ivy

@ivy.templates.register('api')
def api_callback(page, filename):
    events = []
    for year in ivy.nodes.node('events').children:
        for event in ivy.nodes.node('events', year).childlist:
            events.append({
                'title': event.get('title'),
                'start': str(event.get('start')),
                'allDay': event.get('fullday'),
                'url': event.url
            })
    return json.dumps(events)
