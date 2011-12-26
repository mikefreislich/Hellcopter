//
//  GameEngine.m
//  Hellcopter
//
//  Created by Mike Freislich on 2011/12/23.
//  Copyright (c) 2011 Clue. All rights reserved.
//

#import "GameEngine.h"
#import <OpenGL/gl.h>

@implementation GameEngine

@synthesize gameMode;

NSArray* friendlyBulletArray;
NSArray* enemyBulletArray;
NSArray* enemyArray;
Entity3d* player;
EnumGameMode previousGameMode;

- (id)init {
    self = [super init];
    if (self) {
        player = [[Entity3d alloc] init];
        
        self.gameMode = gmSplashScreen;
        previousGameMode = self.gameMode;
    }
    return self;
} 

-(void) render
{
    switch (gameMode) {
            
        case gmSplashScreen:
            glClearColor(1, 0, 0, 0);
            break;
            
        case gmMainMenu:
            glClearColor(0, 1, 0, 0);
            break;
            
        case gmLevelIntro:
            glClearColor(0, 0, 1, 0);
            break;
            
        case gmLevelInPlay:
           // renderLevel;
            break;
            
        case gmLevelCompleted:
            glClearColor(0, 1, 1, 0);
            break;
            
        case gmGamePaused:
            glClearColor(1, 1, 1, 0);
            break;
            
    }    
    
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

-(void) renderLevel
{
    /*
     // Upload the texture
     // Since we are sharing OpenGL objects between the full-screen and non-fullscreen contexts, we only need to do this once
     if (!textureName) {
     NSString *path = [[NSBundle mainBundle] pathForResource:@"Earth" ofType:@"jpg"];
     texture = [[Texture alloc] initWithPath:path];
     textureName = [texture textureName];
     }
     
     // Set up texturing parameters
     glBindTexture(GL_TEXTURE_2D, textureName);
     glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
     
     
     // Set up our single directional light (the Sun!)
     lightDirection[0] = cos(dtor(sunAngle));
     lightDirection[2] = sin(dtor(sunAngle));
     glLightfv(GL_LIGHT0, GL_POSITION, lightDirection);
     
     glPushMatrix();
     
     
     // Back the camera off a bit
     glTranslatef(0.0, 0.0, -1.5);
     
     // Draw the Earth!
     quadric = gluNewQuadric();
     if (wireframe)
     gluQuadricDrawStyle(quadric, GLU_LINE);
     
     gluQuadricTexture(quadric, GL_TRUE);
     glMaterialfv(GL_FRONT, GL_AMBIENT, materialAmbient);
     glMaterialfv(GL_FRONT, GL_DIFFUSE, materialDiffuse);
     glRotatef(rollAngle, 1.0, 0.0, 0.0);
     glRotatef(-23.45, 0.0, 0.0, 1.0); // Earth's axial tilt is 23.45 degrees from the plane of the ecliptic
     glRotatef(animationPhase * 360.0, 0.0, 1.0, 0.0);
     glRotatef(-90.0, 1.0, 0.0, 0.0);
     gluSphere(quadric, radius, 48, 24);
     gluDeleteQuadric(quadric);
     quadric = NULL;
     
     glPopMatrix();
     
     glBindTexture(GL_TEXTURE_2D, 0);
     */
}

@end
