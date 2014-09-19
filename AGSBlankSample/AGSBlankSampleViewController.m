//
//  EQSViewController.m
//  Basemaps
//
//  Created by Nicholas Furness on 11/29/12.
//  Copyright (c) 2012 ESRI. All rights reserved.
//

#import "AGSBlankSampleViewController.h"
#import <ArcGIS/ArcGIS.h>

@interface AGSBlankSampleViewController ()
@property (weak, nonatomic) IBOutlet AGSMapView *mapView;
@end

@implementation AGSBlankSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL* url = [NSURL URLWithString:@"http://129.63.163.68:6080/arcgis/rest/services/stlouis_0312/MapServer"];
    AGSDynamicMapServiceLayer *serviceLayer = [AGSDynamicMapServiceLayer dynamicMapServiceLayerWithURL:url];
    [self.mapView addMapLayer:serviceLayer withName:@"Service Layer"];
    
    // NSURL* url = [NSURL URLWithString:
    //@"//http://129.63.163.68:6080/arcgis/rest/services/stlouis_0312/FeatureServer"];
   // AGSFeatureLayer *featureLayer = [AGSFeatureLayer featureServiceLayerWithURL:url mode: AGSFeatureLayerModeOnDemand];
    //[self.mapView addMapLayer:featureLayer withName:@"Feature Layer"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
