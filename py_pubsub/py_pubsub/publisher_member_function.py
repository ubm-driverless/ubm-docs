# Copyright 2016 Open Source Robotics Foundation, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import rclpy
from rclpy.node import Node

from std_msgs.msg import UInt8MultiArray, MultiArrayDimension


def cv2_to_u8(img):
    msg = UInt8MultiArray()
    
    msg_dim = list()
    for i in range(img.ndim):
        msg_dim.append(MultiArrayDimension())
        msg_dim[i].label = 'dim%d' % i
        msg_dim[i].size = img.shape[i]
        msg_dim[i].stride = img.shape[i] * img.dtype.itemsize
        	
    msg.layout.dim = msg_dim        
    msg.data = img.reshape([1, -1])[0].tolist()
    
    return msg


class MinimalPublisher(Node):
    """Base class for Sphinx errors.

    This is the base class for "nice" exceptions.  When such an exception is
    raised, Sphinx will abort the build and present the exception category and
    message to the user.

    Extensions are encouraged to derive from this exception for their custom
    errors.

    Exceptions *not* derived from :exc:`SphinxError` are treated as unexpected
    and shown to the user with a part of the traceback (and the full traceback
    saved in a temporary file).
    .. attribute:: name

        Name of the node
    """

    name = 'publisher'

    def __init__(self):
        super().__init__('minimal_publisher')
        self.publisher_ = self.create_publisher(UInt8MultiArray, 'topic', 10)
        timer_period = 0.5  # seconds
        self.timer = self.create_timer(timer_period, self.timer_callback)
        self.i = 0

    def timer_callback(self):
        img = img.astype("uint8")
        
    	        
        self.publisher_.publish(msg)
        self.get_logger().info('Publishing')
        self.i += 1


def main(args=None):
    rclpy.init(args=args)

    minimal_publisher = MinimalPublisher()

    rclpy.spin(minimal_publisher)

    # Destroy the node explicitly
    # (optional - otherwise it will be done automatically
    # when the garbage collector destroys the node object)
    minimal_publisher.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
