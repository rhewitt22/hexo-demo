{{ partial('_partial/head.swig') }}
  <body>
    {{ partial('_partial/header.swig') }}
    <div class="container">
      <section class="content">{{ body }}</section>
    </div>
    {{ partial('_partial/footer.swig') }}
    {{ partial('_partial/after-footer.swig') }}
  </body>
</html>