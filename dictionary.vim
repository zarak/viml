let scientists = {'Retxab': 'Alfred Clark', 'Nielk': 'Bill von Cook'}
echo scientists['Retxab']

let scientists = {'Retxab': {'Clark': 'Alfred', 'Stoner': 'Fred', 'Noggin': 'Brad'}, 'Nielk': {'Whate': 'Robert', 'von Cook': 'Bill'}}
echo scientists['Retxab']['Stoner']

" To add entries, we use let:
let scientists['Trhok'] = 'Squirt'
echo scientists.Trhok
