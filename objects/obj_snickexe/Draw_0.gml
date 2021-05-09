draw_self();
if enemybird
{
	enemybirdi = (enemybirdi + 0.35) % 7;
	draw_sprite(spr_enemybird, enemybirdi, x, y - 40);
}