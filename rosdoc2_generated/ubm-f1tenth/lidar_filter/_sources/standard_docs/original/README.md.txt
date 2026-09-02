# Lidar Preprocessing Node
This ROS 2 node is designed to preprocess LiDAR data by applying various filters and transformations. The node takes raw LiDAR scan data, processes it to remove noise and outliers, and publishes the refined data for further use. The main filtering techniques used include outlier filtering, median filtering, and mean convolution.

## To Start the algorithm

The algorithm is starded by default in the "`bringup.py`" launch file.

## Subscriptions and Publications
Subscriber:

- `/scan`: The node subscribes to this topic to receive raw LiDAR scan data. The topic name can be changed using the `scan_topic` parameter.

Publisher:

- `/scan_preprocessed`: The node publishes the preprocessed LiDAR scan data to this topic. The topic name can be changed using the `scan_preprocessed_topic` parameter.

## Parameters

The following parameters can be configured:

- `max_range`: Maximum allowable range for LiDAR points. Points beyond this range will be clamped. Default is 10.0.
- `min_range`: Minimum allowable range for LiDAR points. Points below this range will be clamped. Default is 0.05.
- `mean_filter_size`: Size of the kernel used for mean convolution. Default is 31.
- `number_of_mean_filter`: Number of times the mean filter should be applied. Default is 1.
- `median_filter_window`: Window size for the median filter. Default is 5.
- `enable_median_filter_`: Boolean flag to enable or disable median filtering. Default is false.
- `enable_outliers_filter_`: Boolean flag to enable or disable outliers filtering. Default is true.
- `scan_topic`: Topic name for the incoming raw LiDAR scan data. Default is /scan.
- `preprocessed_scan_topic`: Topic name for the outgoing preprocessed LiDAR scan data. Default is `/scan_preprocessed`.
- `car_name`: Name of the vehicle, used for special processing. Default is `philly`.


## Main operations

- Outlier Filtering: Outlier filtering is applied to remove LiDAR points that exceed the `max_range`. Points detected as outliers are replaced by interpolated values based on their neighboring points. Outlier filtering can be enabled or disabled using the `enable_outliers_filtering` parameter.

- Clipping LiDAR values: The ranges are clipped between `min_range` and `max_range`. It cannot be turned off from the parameters.

- Median Filter: The median filter is applied to smooth the LiDAR data. It is particularly useful for removing noise and small spikes in the data. The window size for the filter is controlled by the `median_filter_window` parameter. Median filtering can be enabled or disabled using the `enable_median_filter_` parameter.

- Mean Convolution: The mean convolution filter is applied to further smooth the LiDAR data. This filter is applied `number_of_mean_filter` times using a kernel of size `mean_filter_size`. It helps in reducing noise and producing a more stable output.




