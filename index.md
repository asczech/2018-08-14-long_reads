---
layout: workshop      # DON'T CHANGE THIS.
title: "Long Read Sequencing Genomics Workshop"
venue: "WUR Radix"        # brief name of host site without address (e.g., "Euphoric State University")
address: "Radix - Wageningen campus, Droevendaalsesteeg 1, 6708 PB Wageningen"      # full street address of workshop (e.g., "Room A, 123 Forth Street, Blimingen, Euphoria")
country: "nl"      # lowercase two-letter ISO country code such as "fr" (see https://en.wikipedia.org/wiki/ISO_3166-1)
language: "en"     # lowercase two-letter ISO language code such as "fr" (see https://en.wikipedia.org/wiki/ISO_639-1)
latlng: "51.986922, 5.664407"       # decimal latitude and longitude of workshop venue (e.g., "41.7901128,-87.6007318" - use https://www.latlong.net/)
humandate: "14th - 15th of August 2018"    # human-readable dates for the workshop (e.g., "Feb 17-18, 2020")
humantime: "9:00 - 17:00"    # human-readable times for the workshop (e.g., "9:00 am - 4:30 pm")
startdate: 2018-08-14      # machine-readable start date for the workshop in YYYY-MM-DD format like 2015-01-01
enddate: 2018-08-15        # machine-readable end date for the workshop in YYYY-MM-DD format like 2015-01-02
instructor: ["Henri van de Geest", "Sven Warris"] # boxed, comma-separated list of instructors' names as strings, like ["Kay McNulty", "Betty Jennings", "Betty Snyder"]
helper: ["Andrzej S. Czech"]     # boxed, comma-separated list of helpers' names, like ["Marlyn Wescoff", "Fran Bilas", "Ruth Lichterman"]
email: ["a.s.czech@genetwister.nl"]    # boxed, comma-separated list of contact email addresses for the host, lead instructor, or whoever else is handling questions, like ["marlyn.wescoff@example.org", "fran.bilas@example.org", "ruth.lichterman@example.org"]
collaborative_notes:             # optional: URL for the workshop collaborative notes, e.g. an Etherpad or Google Docs document
eventbrite:           # optional: alphanumeric key for Eventbrite registration, e.g., "1234567890AB" (if Eventbrite is being used)
---


<h4>Genetwister Technologies B.V. and Wageningen University & Research are pleased to invite you to <strong>{{page.title}}</strong>.</h4>

<h2 id="general">General Information</h2>

In this two day workshop you will learn about two most common long read sequencing technologies: Pacific Bioscience an Oxford Nanopore Technology. You will learn how to work with the data, perform assembly, mapping, and compare the results of both technologies.

<p id="who">
  <strong>Who:</strong>
  The workshop is intended for bioinformaticians or researchers who want to learn about application of latest sequencing technologies in genomics. 
  <strong>No prior experience with PacBio or ONT sequencing data is required.</strong>
</p>

{% comment %}
  LOCATION

  This block displays the address and links to maps showing directions
  if the latitude and longitude of the workshop have been set.  You
  can use https://itouchmap.com/latlong.html to find the lat/long of an
  address.
{% endcomment %}
{% if page.latlng %}
<p id="where">
  <strong>Where:</strong>
  {{page.address}}.
  Get directions with
  <a href="//www.openstreetmap.org/?mlat={{page.latlng | replace:',','&mlon='}}&zoom=16">OpenStreetMap</a>
  or
  <a href="//maps.google.com/maps?q={{page.latlng}}">Google Maps</a>.
</p>
{% endif %}

{% comment %}
  DATE

  This block displays the date and links to Google Calendar.
{% endcomment %}
{% if page.humandate %}
<p id="when">
  <strong>When:</strong>
  {{page.humandate}}.
  {% include workshop_calendar.html %}
</p>
{% endif %}

{% comment %}
  SPECIAL REQUIREMENTS

  Modify the block below if there are any special requirements.
{% endcomment %}
<p id="requirements">
  <strong>Requirements:</strong> It is not necessary to bring a laptop.  Workstations with preinstalled virtual machine with all data and tools will be provided. Principles of bioinformatics and genomics is necessary. Participants will work in linux environment.
</p>

{% comment %}
  ACCESSIBILITY

  Modify the block below if there are any barriers to accessibility or
  special instructions.
{% endcomment %}
<p id="accessibility">
  <strong>Accessibility:</strong> We are committed to making this workshop
  accessible to everybody.
  The workshop organizers have checked that:
</p>
<ul>
  <li>The room is wheelchair / scooter accessible.</li>
  <li>Accessible restrooms are available.</li>
</ul>
<p>
  Materials will be provided in advance of the workshop and
  large-print handouts are available if needed by notifying the
  organizers in advance.  If we can help making learning easier for
  you (e.g. sign-language interpreters, lactation facilities) please
  get in touch (using contact details below) and we will
  attempt to provide them.
</p>

{% comment %}
  CONTACT EMAIL ADDRESS

  Display the contact email address set in the configuration file.
{% endcomment %}
<p id="contact">
  <strong>Contact</strong>:
  Please email
  {% if page.email %}
    {% for email in page.email %}
      {% if forloop.last and page.email.size > 1 %}
        or
      {% else %}
        {% unless forloop.first %}
        ,
        {% endunless %}
      {% endif %}
      <a href='mailto:{{email}}'>{{email}}</a>
    {% endfor %}
  {% else %}
    to-be-announced
  {% endif %}
  for more information.
</p>

<hr/>



{% comment %}
  SCHEDULE

  Show the workshop's schedule.  Edit the items and times in the table
  to match your plans.  You may also want to change 'Day 1' and 'Day
  2' to be actual dates or days of the week.
{% endcomment %}
<h2 id="schedule">Schedule</h2>

{% include gt/schedule.html %}


<hr/>


{% comment %}
<div id="vm">
  <h3>Virtual Machine</h3>

  <p>
    Some instructors prefer to have learners use a virtual machine (VM)
    rather than install software on their own computers.  If your
    instructors have chosen to do this, please:
  </p>
  <ol>
    <li>
      Install <a href="https://www.virtualbox.org/">VirtualBox</a>.
    </li>
    <li>
      Download our <a href="{{site.swc_vm}}">VM image</a>.
      <strong>Warning:</strong> this file is 1.7 GByte, so please
      download it <em>before</em> coming to your workshop.
    </li>
    <li>
      Load the VM into VirtualBox by selecting "Import Appliance" and
      loading the <code>.ova</code> file.
    </li>
  </ol>
</div>
{% endcomment %}
