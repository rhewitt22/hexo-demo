{{ post.content }}

<ul class="list-grid">
  {% for post in site.posts %}
  <li>
    <h2><a href="news/{{ url_for(post.path) }}">{{ post.title }}</a></h2>
    <p>{{ post.excerpt }}</p>
  </li>
  {% endfor %}
</ul>

