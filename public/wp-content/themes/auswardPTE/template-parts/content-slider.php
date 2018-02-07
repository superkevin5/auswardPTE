<div class="hero-slider__slide" style="background-image: url(<?php echo get_field('slider_image') ?>);">
	<div class="hero-slider__interior container">
		<div class="hero-slider__overlay">
			<?php if (get_field('slider_title')) { ?>
        		<h2 class="headline headline--medium t-center"><?php echo  get_field('slider_title')?></h2>
        		<p class="t-center"><?php echo  get_field('slider_desc')?></p>
        		<?php if (get_field('slider_link')) { ?>
        			<p class="t-center no-margin"><a href="<?php echo get_field('slider_link')?>" class="btn btn--blue">Learn more</a></p>
        		<?php } ?>
     				
			<?php } ?>
		</div>
	</div>
</div>