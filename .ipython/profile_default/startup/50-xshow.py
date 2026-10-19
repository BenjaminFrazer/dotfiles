"""xshow(obj): open xarray's Jupyter-style HTML view in the browser from terminal IPython."""
import tempfile
import webbrowser
from pathlib import Path

# Snap Firefox has a private /tmp and can't read hidden dirs, so use a visible folder in $HOME.
XSHOW_DIR = Path.home() / "Downloads" / "xshow"


def xshow(obj):
    """Open xarray's Jupyter-style HTML view of obj (DataArray, Dataset, DataTree) in the browser."""
    XSHOW_DIR.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile("w", dir=XSHOW_DIR, prefix="xshow-", suffix=".html", delete=False) as f:
        f.write(f"<!doctype html><html><head><meta charset='utf-8'><title>xshow</title></head><body>{obj._repr_html_()}</body></html>")
    webbrowser.open(f"file://{f.name}")
