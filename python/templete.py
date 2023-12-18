#!/bin/env python3
import os
import sys

script_path = os.path.dirname(os.path.abspath(__file__))
save_path = os.path.abspath(os.path.join(script_path, '../images'))

def main(argv):
  savepdf = False
  quiet = False
  if "savepdf" in argv:
    savepdf = True
  if "quiet" in argv:
    quiet = True
  
  save_file = os.path.join(save_path, 'templete.pdf')

  # Plotting
  import matplotlib.pyplot as plt
  # ...
  plt.plot([1,2,3,4])
  print(script_path)

  if not quiet:
    print('Show plot...')
    plt.show() # quiet means plt.show() will not be called
  
  if savepdf:
    print('Save to %s' % save_file)
    plt.savefig(save_file, bbox_inches='tight')

if __name__ == '__main__':
  if "help" in sys.argv:
    file_name = os.path.basename(__file__)
    print('Usage: python3 %s [savepdf] [quiet]' % file_name)
    exit(0)
  else:
    main(sys.argv[1:])