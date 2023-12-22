//
//  Photographer.h
//  SEM2
//
//  Created by Герман Яренко on 20.12.23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef  NS_ENUM(NSIntager, CameraType){
    CANON,NIKON
    
}
@interface Photographer : NSObject{
    @ private CameraType _cameraType;
    @ private NSIntager _statrtNumberOfPhoto;
    @ private NSintager _wage;
}

- (CameraType) cameraType ;
- (void) setCameraType: (CameraType) cameraType;
- (NSIntager) getstatrtNumberOfPhoto;
- (void) getstatrtNumberOfPhoto;
- (NSIntager) getWage;
- (void) setWage;
@end

NS_ASSUME_NONNULL_END
