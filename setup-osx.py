from distutils.core import setup
from distutils.extension import Extension
from Pyrex.Distutils import build_ext
setup(
  name = "glewpy",
  version = '0.6.1',
  description = 'Python Wrapping of GLEW',
  author = 'Charles Moad',
  author_email = 'cmoad@indiana.edu',
  url = 'http://glewpy.sourceforge.net/',
  ext_package = 'glew',
  packages = ['glew', 'glew.gl', 'glew.glx', 'glew.wgl'],
  package_dir = {'glew': 'src/'},
  ext_modules=[
    Extension('glew', ['src/glew.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.threedfx', ['src/gl/threedfx.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.apple', ['src/gl/apple.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.arb', ['src/gl/arb.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.ati', ['src/gl/ati.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.atix', ['src/gl/atix.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.ext', ['src/gl/ext.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.gl', ['src/gl/gl.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.hp', ['src/gl/hp.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.ibm', ['src/gl/ibm.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.ingr', ['src/gl/ingr.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.intel', ['src/gl/intel.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.ktx', ['src/gl/ktx.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.mesa', ['src/gl/mesa.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.nv', ['src/gl/nv.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.oml', ['src/gl/oml.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.pgi', ['src/gl/pgi.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.rend', ['src/gl/rend.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.s3', ['src/gl/s3.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.sgis', ['src/gl/sgis.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.sgix', ['src/gl/sgix.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.sgi', ['src/gl/sgi.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.sunx', ['src/gl/sunx.pyx'], extra_link_args = ['-framework', 'OpenGL']),
    Extension('gl.sun', ['src/gl/sun.pyx'], extra_link_args = ['-framework', 'OpenGL'])
    ],
  cmdclass = {'build_ext': build_ext}
)
