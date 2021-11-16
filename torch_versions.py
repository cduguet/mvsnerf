import torch
import pytorch_lightning as pl
import torch
import sys

print('sys version: ', sys.version)
print('torch version: ', torch.__version__)
print('lightning version: ', pl.__version__)
print('cuda available', torch.cuda.is_available())
print('cuda torch version', torch.version.cuda) 
print('cudnn enabled', torch.backends.cudnn.enabled)
device = torch.device('cuda')
print('device', torch.cuda.get_device_properties(device))
print('torch test', torch.tensor([1.0, 2.0]).cuda())

