{{ page.content }}

<ul class="list-grid">
  {% for post in _.first(site.posts, 3) %}
  <li>
    <h2><a href="news/{{ url_for(post.path) }}">{{ post.title }}</a></h2>
    <p>{{ post.excerpt }}</p>
  </li>
  {% endfor %}
</ul>