/// @description set the shader alpha
if layer_exists(mylayer)
{
	shader_set(shd_layeralpha);
	uniform = shader_get_uniform(shd_layeralpha, "alpha");
	shader_set_uniform_f(uniform, alpha);
	shader_reset();
}