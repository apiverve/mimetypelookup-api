from setuptools import setup, find_packages

setup(
    name='apiverve_mimetypelookup',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='MIME Type Lookup is a tool for looking up MIME types by file extension or finding file extensions by MIME type. It covers all common file types including documents, images, video, audio, and archives.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
