import $ from 'jquery';
import 'fullcalendar';

$(function() {
  var containerEl = $('#calendar');

  containerEl.fullCalendar({
    googleCalendarApiKey: 'AIzaSyAcVSuflNeQYm9cFynI5m6-Nwz1GbxTEFo',
    events: {
      googleCalendarId: 'schettler.net_469oolqhfdmvu4ppnhsoirt90g@group.calendar.google.com'
    },
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay,listWeek'
    },
    defaultDate: '2018-01-12',
    navLinks: true, // can click day/week names to navigate views
    editable: true,
    eventLimit: true, // allow "more" link when too many events
  })
});
