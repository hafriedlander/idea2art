# idea2art

This is idea2.art, a Flutter client for the stability.ai GRPC API for Stable Diffusion.

It's usable both with the cloud-based grpc.stability.ai and a personal server running hafriedlander/stable-diffusions-grpcapi

TLDR; it's a client to generate AI art

# Running

Easiest way is just to visit https://idea2.art (or http://idea2.art depending on if your server is running https or not)

Or get flutter installed, and then `flutter run web`. At the moment you will need the preview version of flutter (3.4.x)
as there is a bug with converting canvases to images in 3.3.x.

You will need to have https://github.com/hafriedlander/stable-diffusion-grpcserver running to connect to, as there are no
public servers at the moment.

(Theoretically you could also use api.stability.ai, but outpainting doesn't work very well if you do)

# License

For now, Affero GPL 3.0 - https://www.gnu.org/licenses/agpl-3.0.en.html

I will consider a less restrictive license later maybe.
