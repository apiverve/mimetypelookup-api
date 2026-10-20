from setuptools import setup, find_packages

setup(
    name='apiverve_mimetypelookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='MIME Type Lookup matches file extensions to MIME types, categories, and default character encodings, or returns matching extensions for any media type. Paid plans add gzip compressibility flags.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/mimetypelookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
