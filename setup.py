from distutils.core import setup
from distutils.extension import Extension
from Pyrex.Distutils import build_ext
setup(
  name = "GLEWpy",
  version = '0.1',
  description = 'Python Wrapping of GLEW',
  author = 'Charles Moad',
  author_email = 'cmoad@indiana.edu',
  url = 'http://glewpy.sourceforge.net/',
  ext_package = 'glew',
  packages = ['glew'],
  package_dir = {'glew': 'src/'},
  ext_modules=[
    Extension('glew', ['src/glew.pyx'], libraries = ['GLEW']),
    Extension('gl', ['src/gl.pyx'], libraries = ['GLEW']),
    Extension('arb', ['src/arb.pyx'], libraries = ['GLEW']),
    Extension('intel', ['src/intel.pyx'], libraries = ['GLEW'])
    ],
  cmdclass = {'build_ext': build_ext}
)
