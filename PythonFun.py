import MySQLdb
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

def main():
    
    # Open database connection
    db = MySQLdb.connect(db="db/development.mysql2" )
    
    return db.describe()