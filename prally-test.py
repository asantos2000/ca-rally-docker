import sys, os
from pyral import Rally, rallyWorkset
import requests
import pyral
import datetime

rally = Rally(os.environ['RALLY_SERVER'], os.environ['RALLY_USER'], os.environ['RALLY_PASSWORD'])

print ('\nCONECTADO\n')

workspaces = rally.getWorkspaces()
for wksp in workspaces:
    print ('\n%s (%s)' % (wksp.Name, wksp.oid))
    print ('---')
    projects = rally.getProjects(workspace=wksp.Name)
    for proj in projects:
        print ('%s\t%s' % (proj.oid, proj.Name))