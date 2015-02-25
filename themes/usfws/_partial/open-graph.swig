  <!-- twitter card data -->
  <meta name="twitter:card" value="summary">
  <meta name="twitter:site" content="@usfwssoutheast">
  <meta name="twitter:title" content="{% if page.title %}{{ page.title|title }}{% else %}{{ config.title }}{% endif %}">
  <meta name="twitter:description" content="{{ page.excerpt }}">
  <!-- Twitter Summary card images must be at least 120x120px --> 
  <meta name="twitter:image" content="http://www.example.com/image.jpg">

  <!-- open graph data -->
  <meta property="og:title" content="{% if page.title %}{{ page.title|title }}{% else %}{{ config.title }}{% endif %}" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="{{ page.permalink }}" />
  <meta property="og:image" content="" />
  <meta property="og:description" content="{{ page.excerpt }}" />
  <meta property="og:site_name" content="USFWS Southeast Region" />
  <meta property="fb:admins" content="134503173254693" />

  <!-- Schema.org markup for Google+ -->
  <meta itemprop="name" content="{% if page.title %}{{ page.title|title }}{% else %}{{ config.title }}{% endif %}">
  <meta itemprop="description" content="{{ page.excerpt }}">
  <meta itemprop="image" content="">