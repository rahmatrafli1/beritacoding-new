<!DOCTYPE html>
<html lang="en">

<head>
	<?php $this->load->view('_partials/head'); ?>
</head>

<body>
	<?php $this->load->view('_partials/navbar'); ?>

	<article class="article">
		<h1 class="post-title"><?= $article->title ? html_escape($article->title) : "No Title" ?></h1>
		<div class="post-meta">
			Published at <?= $article->created_at ?>
		</div>
		<div class="post-body">
			<?= $article->content ?>
		</div>
	</article>

	<?php $this->load->view('_partials/footer'); ?>
</body>

</html>
