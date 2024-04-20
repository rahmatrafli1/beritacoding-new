<!DOCTYPE html>
<html lang="en">

<head>
	<?php $this->load->view('admin/_partials/head') ?>
</head>

<body>
	<main class="main">
		<?php $this->load->view('admin/_partials/side_nav') ?>

		<div class="content">
			<h1>Feedback is Empty</h1>

			<p>No Feedback to show</p>

			<?php $this->load->view('admin/_partials/footer') ?>
		</div>
	</main>

	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<?php if ($this->session->flashdata('message')) : ?>
		<script>
			const Toast = Swal.mixin({
				toast: true,
				position: 'top-end',
				showConfirmButton: false,
				timer: 3000,
				timerProgressBar: true,
				didOpen: (toast) => {
					toast.addEventListener('mouseenter', Swal.stopTimer)
					toast.addEventListener('mouseleave', Swal.resumeTimer)
				}
			})

			Toast.fire({
				icon: 'success',
				title: '<?= $this->session->flashdata('message') ?>'
			})
		</script>
	<?php endif ?>
</body>

</html>
