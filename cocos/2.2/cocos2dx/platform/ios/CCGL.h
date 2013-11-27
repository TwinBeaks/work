/****************************************************************************
Copyright (c) 2010 cocos2d-x.org

http://www.cocos2d-x.org

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
****************************************************************************/

#ifndef __CCGL_H__
#define __CCGL_H__


#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    #define GL_DEPTH24_STENCIL8			GL_DEPTH24_STENCIL8_OES
    #define GL_WRITE_ONLY				GL_WRITE_ONLY_OES

    #define	glClearDepth				glClearDepthf
    #define glDeleteVertexArrays		glDeleteVertexArraysOES
    #define glGenVertexArrays			glGenVertexArraysOES
    #define glBindVertexArray			glBindVertexArrayOES
    #define glMapBuffer					glMapBufferOES
    #define glUnmapBuffer				glUnmapBufferOES

    #include <OpenGLES/ES2/gl.h>
    #include <OpenGLES/ES2/glext.h>
#elif (CC_TARGET_PLATFORM == CC_PLATFORM_MAC)
    #define CC_GL_DEPTH24_STENCIL8      -1

    #define glDeleteVertexArrays            glDeleteVertexArraysAPPLE
    #define glGenVertexArrays               glGenVertexArraysAPPLE
    #define glBindVertexArray               glBindVertexArrayAPPLE

    #import <OpenGL/gl.h>
    #import <OpenGL/glu.h>
#endif


#endif // __CCGL_H__