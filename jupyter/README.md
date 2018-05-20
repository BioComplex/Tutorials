# Jupyter hacks
Collection of hacks to get the most out of Jupyter notebooks

### Expanding the screen width

``
# Forces jupyter to expand the screen to 100%
from IPython.core.display import display, HTML
display(HTML("<style>.container {width:100% } </style>"))
``
