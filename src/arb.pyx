include "gltypes.pxi"
include "glewpy.pxi"

# ------------------------ GL_ARB_fragment_program ------------------------ #
GL_FRAGMENT_PROGRAM_ARB = 0x8804
GL_PROGRAM_ALU_INSTRUCTIONS_ARB = 0x8805
GL_PROGRAM_TEX_INSTRUCTIONS_ARB = 0x8806
GL_PROGRAM_TEX_INDIRECTIONS_ARB = 0x8807
GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x8808
GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x8809
GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x880A
GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB = 0x880B
GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB = 0x880C
GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB = 0x880D
GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x880E
GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x880F
GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x8810
GL_MAX_TEXTURE_COORDS_ARB = 0x8871
GL_MAX_TEXTURE_IMAGE_UNITS_ARB = 0x8872

# --------------------- GL_ARB_fragment_program_shadow -------------------- #
# No functions or defines

# ------------------------- GL_ARB_fragment_shader ------------------------ #
GL_FRAGMENT_SHADER_ARB = 0x8B30
GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB = 0x8B49
GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = 0x8B8B

# -------------------------- GL_ARB_point_sprite -------------------------- #
GL_POINT_SPRITE_ARB = 0x8861
GL_COORD_REPLACE_ARB = 0x8862

# ------------------------- GL_ARB_shader_objects ------------------------- #
GL_PROGRAM_OBJECT_ARB = 0x8B40
GL_SHADER_OBJECT_ARB = 0x8B48
GL_OBJECT_TYPE_ARB = 0x8B4E
GL_OBJECT_SUBTYPE_ARB = 0x8B4F
GL_FLOAT_VEC2_ARB = 0x8B50
GL_FLOAT_VEC3_ARB = 0x8B51
GL_FLOAT_VEC4_ARB = 0x8B52
GL_INT_VEC2_ARB = 0x8B53
GL_INT_VEC3_ARB = 0x8B54
GL_INT_VEC4_ARB = 0x8B55
GL_BOOL_ARB = 0x8B56
GL_BOOL_VEC2_ARB = 0x8B57
GL_BOOL_VEC3_ARB = 0x8B58
GL_BOOL_VEC4_ARB = 0x8B59
GL_FLOAT_MAT2_ARB = 0x8B5A
GL_FLOAT_MAT3_ARB = 0x8B5B
GL_FLOAT_MAT4_ARB = 0x8B5C
GL_SAMPLER_1D_ARB = 0x8B5D
GL_SAMPLER_2D_ARB = 0x8B5E
GL_SAMPLER_3D_ARB = 0x8B5F
GL_SAMPLER_CUBE_ARB = 0x8B60
GL_SAMPLER_1D_SHADOW_ARB = 0x8B61
GL_SAMPLER_2D_SHADOW_ARB = 0x8B62
GL_SAMPLER_2D_RECT_ARB = 0x8B63
GL_SAMPLER_2D_RECT_SHADOW_ARB = 0x8B64
GL_OBJECT_DELETE_STATUS_ARB = 0x8B80
GL_OBJECT_COMPILE_STATUS_ARB = 0x8B81
GL_OBJECT_LINK_STATUS_ARB = 0x8B82
GL_OBJECT_VALIDATE_STATUS_ARB = 0x8B83
GL_OBJECT_INFO_LOG_LENGTH_ARB = 0x8B84
GL_OBJECT_ATTACHED_OBJECTS_ARB = 0x8B85
GL_OBJECT_ACTIVE_UNIFORMS_ARB = 0x8B86
GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = 0x8B87
GL_OBJECT_SHADER_SOURCE_LENGTH_ARB = 0x8B88

ctypedef char GLcharARB
ctypedef int GLhandleARB

cdef extern from "GL/glew.h":
   cdef enum:
      GLEW_ARB_shader_objects
   
   void c_glAttachObjectARB "glAttachObjectARB"(GLhandleARB containerObj, GLhandleARB obj)
   void c_glCompileShaderARB "glCompileShaderARB"(GLhandleARB shaderObj)
   GLhandleARB c_glCreateProgramObjectARB "glCreateProgramObjectARB"()
   GLhandleARB c_glCreateShaderObjectARB "glCreateShaderObjectARB"(GLenum shaderType)
   void c_glDeleteObjectARB "glDeleteObjectARB"(GLhandleARB obj)
   void c_glDetachObjectARB "glDetachObjectARB"(GLhandleARB containerObj, GLhandleARB attachedObj)
   void c_glGetActiveUniformARB "glGetActiveUniformARB"(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint *size, GLenum *type, GLcharARB *name)
   void c_glGetAttachedObjectsARB "glGetAttachedObjectsARB"(GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB *obj)
   GLhandleARB c_glGetHandleARB "glGetHandleARB"(GLenum pname)
   void c_glGetInfoLogARB "glGetInfoLogARB"(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB *infoLog)
   void c_glGetObjectParameterfvARB "glGetObjectParameterfvARB"(GLhandleARB obj, GLenum pname, GLfloat* params)
   void c_glGetObjectParameterivARB "glGetObjectParameterivARB"(GLhandleARB programObj, GLint location, GLint* params)
   void c_glGetShaderSourceARB "glGetShaderSourceARB"(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB *source)
   GLint c_glGetUniformLocationARB "glGetUniformLocationARB"(GLhandleARB programObj, GLcharARB *name)
   void c_glGetUniformfvARB "glGetUniformfvARB"(GLhandleARB programObj, GLint location, GLfloat* params)
   void c_glGetUniformivARB "glGetUniformivARB"(GLhandleARB programObj, GLint location, GLint* params)
   void c_glLinkProgramARB "glLinkProgramARB"(GLhandleARB programObj)
   void c_glShaderSourceARB "glShaderSourceARB"(GLhandleARB shaderObj, GLsizei count, GLcharARB ** string, GLint *length)
   void c_glUniform1fARB "glUniform1fARB"(GLint location, GLfloat v0)
   void c_glUniform1fvARB "glUniform1fvARB"(GLint location, GLsizei count, GLfloat* value)
   void c_glUniform1iARB "glUniform1iARB"(GLint location, GLint v0)
   void c_glUniform1ivARB "glUniform1ivARB"(GLint location, GLsizei count, GLint* value)
   void c_glUniform2fARB "glUniform2fARB"(GLint location, GLfloat v0, GLfloat v1)
   void c_glUniform2fvARB "glUniform2fvARB"(GLint location, GLsizei count, GLfloat* value)
   void c_glUniform2iARB "glUniform2iARB"(GLint location, GLint v0, GLint v1)
   void c_glUniform2ivARB "glUniform2ivARB"(GLint location, GLsizei count, GLint* value)
   void c_glUniform3fARB "glUniform3fARB"(GLint location, GLfloat v0, GLfloat v1, GLfloat v2)
   void c_glUniform3fvARB "glUniform3fvARB"(GLint location, GLsizei count, GLfloat* value)
   void c_glUniform3iARB "glUniform3iARB"(GLint location, GLint v0, GLint v1, GLint v2)
   void c_glUniform3ivARB "glUniform3ivARB"(GLint location, GLsizei count, GLint* value)
   void c_glUniform4fARB "glUniform4fARB"(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)
   void c_glUniform4fvARB "glUniform4fvARB"(GLint location, GLsizei count, GLfloat* value)
   void c_glUniform4iARB "glUniform4iARB"(GLint location, GLint v0, GLint v1, GLint v2, GLint v3)
   void c_glUniform4ivARB "glUniform4ivARB"(GLint location, GLsizei count, GLint* value)
   void c_glUniformMatrix2fvARB "glUniformMatrix2fvARB"(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)
   void c_glUniformMatrix3fvARB "glUniformMatrix3fvARB"(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)
   void c_glUniformMatrix4fvARB "glUniformMatrix4fvARB"(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)
   void c_glUseProgramObjectARB "glUseProgramObjectARB"(GLhandleARB programObj)
   void c_glValidateProgramARB "glValidateProgramARB"(GLhandleARB programObj)

def glAttachObjectARB(containerObj, obj):
   c_glAttachObjectARB(containerObj, obj)

def glCompileShaderARB(shaderObj):
   c_glCompileShaderARB(shaderObj)

def glCreateProgramObjectARB():
   return c_glCreateProgramObjectARB()

def glCreateShaderObjectARB(shaderType):
   return c_glCreateShaderObjectARB(shaderType)

def glDeleteObjectARB(obj):
   c_glDeleteObjectARB(obj)

def glDetachObjectARB(containerObj, attachedObj):
   c_glDetachObjectARB(containerObj, attachedObj)

def glGetActiveUniformARB(programObj, index):
   cdef GLsizei maxLength
   cdef GLint size
   cdef GLenum type
   cdef GLcharARB *name

   c_glGetObjectParameterivARB(programObj, GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB, &maxLength)
   name = <GLcharARB*>PyMem_Malloc(maxLength+1)
   c_glGetActiveUniformARB(programObj, index, maxLength, NULL, &size, &type, name)

   retname = name
   PyMem_Free(name)
   return (size, type, retname)

def glGetAttachedObjectsARB(containerObj):
   cdef GLhandleARB *obj
   cdef int maxCount, i

   c_glGetObjectParameterivARB(containerObj, GL_OBJECT_ATTACHED_OBJECTS_ARB, &maxCount)
   obj = <GLhandleARB*>PyMem_Malloc(sizeof(GLhandleARB) * maxCount)
   c_glGetAttachedObjectsARB(containerObj, maxCount, NULL, obj)

   retval = list()
   for i from 0 <= i < maxCount:
      retval.append(obj[i])
   PyMem_Free(obj)
   return retval

def glGetHandleARB(pname):
   return c_glGetHandleARB(pname)

def glGetInfoLogARB(obj):
   cdef GLsizei infoLogLength
   cdef GLcharARB *infoLog

   c_glGetObjectParameterivARB(obj, GL_OBJECT_INFO_LOG_LENGTH_ARB, &infoLogLength)
   if (infoLogLength > 0):
      infoLog = <GLcharARB*>PyMem_Malloc(infoLogLength+1)
      if (infoLog == NULL):
         print 'Could not allocate InfoLog buffer'
         sys.exit()
      offset = 0
      c_glGetInfoLogARB(obj, infoLogLength, NULL, infoLog)
      retLog = infoLog
      PyMem_Free(infoLog)
      return retLog
   else:
      return ''

def glGetObjectParameterfvARB(obj, pname):
   cdef GLfloat params
   c_glGetObjectParameterfvARB(obj, pname, &params)
   return params

def glGetObjectParameterivARB(programObj, location):
   cdef GLint params
   c_glGetObjectParameterivARB(programObj, location, &params)
   return params

def glGetShaderSourceARB(obj):
   cdef GLsizei length
   cdef GLcharARB *source
   
   c_glGetObjectParameterivARB(obj, GL_OBJECT_SHADER_SOURCE_LENGTH_ARB, &length)
   if (length > 0):
      source = <GLcharARB*>PyMem_Malloc(length+1)
      if (source == NULL):
         print 'Could not allocate InfoLog buffer'
         sys.exit()
      c_glGetShaderSourceARB(obj, length, NULL, source)
      retSrc = source
      PyMem_Free(source)
      return retSrc
   else:
      return ''

def glGetUniformLocationARB(programObj, name):
   return c_glGetUniformLocationARB(programObj, name)

def glGetUniformfvARB(programObj, location):
   cdef GLfloat params
   c_glGetUniformfvARB(programObj, location, &params)
   return params

def glGetUniformivARB(programObj, location):
   cdef GLint params
   c_glGetUniformivARB(programObj, location, &params)
   return params

def glLinkProgramARB(programObj):
   c_glLinkProgramARB(programObj)

def glShaderSourceARB(shaderObj, count, programs):
   cdef GLcharARB **progList
   cdef int i
   progList = <GLcharARB**>PyMem_Malloc(4 * count)
   i = 0
   for prog in programs:
      progList[i] = prog
      i = i + 1
   c_glShaderSourceARB(shaderObj, count, <GLcharARB**>progList, NULL)
   PyMem_Free(progList)

def glUniform1fARB(location, v0):
   c_glUniform1fARB(location, v0)

def glUniform1fvARB(location, count, value):
   cdef GLfloat args[1]
   args[0] = value[0]
   c_glUniform1fvARB(location, count, args)

def glUniform1iARB(location, v0):
   c_glUniform1iARB(location, v0)

def glUniform1ivARB(location, count, value):
   cdef GLint args[1]
   args[0] = value[0]
   c_glUniform1ivARB(location, count, args)

def glUniform2fARB(location, v0, v1):
   c_glUniform2fARB(location, v0, v1)

def glUniform2fvARB(location, count, value):
   cdef GLfloat args[2]
   cdef int i
   i = 0
   for val in value:
      args[i] = val
      i = i + 1
   c_glUniform2fvARB(location, count, args)

def glUniform2iARB(location, v0, v1):
   c_glUniform2iARB(location, v0, v1)

def glUniform2ivARB(location, count, value):
   cdef GLint args[2]
   cdef int i
   i = 0
   for val in value:
      args[i] = val
      i = i + 1
   c_glUniform2ivARB(location, count, args)

def glUniform3fARB(location, v0, v1, v2):
   c_glUniform3fARB(location, v0, v1, v2)

def glUniform3fvARB(location, count, value):
   cdef GLfloat args[3]
   cdef int i
   i = 0
   for val in value:
      args[i] = val
      i = i + 1
   c_glUniform3fvARB(location, count, args)

def glUniform3iARB(location, v0, v1, v2):
   c_glUniform3iARB(location, v0, v1, v2)

def glUniform3ivARB(location, count, value):
   cdef GLint args[3]
   cdef int i
   i = 0
   for val in value:
      args[i] = val
      i = i + 1
   c_glUniform3ivARB(location, count, args)

def glUniform4fARB(location, v0, v1, v2, v3):
   c_glUniform4fARB(location, v0, v1, v2, v3)

def glUniform4fvARB(location, count, value):
   cdef GLfloat args[4]
   cdef int i
   i = 0
   for val in value:
      args[i] = val
      i = i + 1
   c_glUniform4fvARB(location, count, args)

def glUniform4iARB(location, v0, v1, v2, v3):
   c_glUniform4iARB(location, v0, v1, v2, v3)

def glUniform4ivARB(location, count, value):
   cdef GLint args[4]
   cdef int i
   i = 0
   for val in value:
      args[i] = val
      i = i + 1
   c_glUniform4ivARB(location, count, args)

def glUniformMatrix2fvARB(location, count, transpose, value):
   cdef GLfloat args[4]
   cdef int i
   i = 0
   for val in value:
      args[i] = val
      i = i + 1
   c_glUniformMatrix2fvARB(location, count, transpose, args)

def glUniformMatrix3fvARB(location, count, transpose, value):
   cdef GLfloat args[9]
   cdef int i
   i = 0
   for val in value:
      args[i] = val
      i = i + 1
   c_glUniformMatrix3fvARB(location, count, transpose, args)

def glUniformMatrix4fvARB(location, count, transpose, value):
   cdef GLfloat args[16]
   cdef int i
   i = 0
   for val in value:
      args[i] = val
      i = i + 1
   c_glUniformMatrix4fvARB(location, count, transpose, args)

def glUseProgramObjectARB(programObj):
   c_glUseProgramObjectARB(programObj)

def glValidateProgramARB(programObj):
   c_glValidateProgramARB(programObj)

# ---------------------- GL_ARB_shading_language_100 ---------------------- #
GL_SHADING_LANGUAGE_VERSION_ARB = 0x8B8C

# ----------------------------- GL_ARB_shadow ----------------------------- #
GL_TEXTURE_COMPARE_MODE_ARB = 0x884C
GL_TEXTURE_COMPARE_FUNC_ARB = 0x884D
GL_COMPARE_R_TO_TEXTURE_ARB = 0x884E

# ------------------------- GL_ARB_shadow_ambient ------------------------- #
GL_TEXTURE_COMPARE_FAIL_VALUE_ARB = 0x80BF

# ---------------------- GL_ARB_texture_border_clamp ---------------------- #
GL_CLAMP_TO_BORDER_ARB = 0x812D
