import ark

@ark.events.register('render_page')
def event_sort_by_date(page):
    event = page['node']
    if page['is_homepage'] or len(event.path) > 1 or event.path[0] != 'events':
        return

    event['sorted_children'] = sorted(
        event.children,
        key=lambda e: e.meta['start'],
        reverse=True
    )
