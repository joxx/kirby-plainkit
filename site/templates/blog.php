<section class="content blog">

  <h1><?= $page->title()->html() ?></h1>
  <?= $page->text()->kirbytext() ?>

  <?php foreach($page->children()->listed()->flip() as $article): ?>

    <article>
      <h1><?= $article->title()->html() ?></h1>
      <p><?= $article->text()->excerpt(300) ?></p>
      <a href="<?= $article->url() ?>">Read more…</a>
    </article>

  <?php endforeach ?>

</section>