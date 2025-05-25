import pandas as pd

for x in range(1):
    path = f'исходные данные/MOCK_DATA ({x}).csv'
    df = pd.read_csv(path)
    # df.drop(columns=['id'], inplace=True)
    df = df.iloc[:10]
    df.to_csv(f'исходные данные/MOCK_DATA_example.csv', index=False)
