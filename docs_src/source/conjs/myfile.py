
class Conj:
    def __init__(
        self,
        base: str,
        definition: str,
        pres: list[str],
        past: list[str],
        notes=None
    ):
        assert len(pres) == 6 and len(past) == 6
        self.base = base
        self.definition = definition
        self.pres = pres
        self.past = past
        self.notes = notes

al = [
    Conj(
        'hacer', 'to do / to make'
        ['hago', 'haces', 'hace', 'hacemos', 'haceis', 'hacen'],
        ['hice', 'hiciste', 'hizo', 'hicimos', 'hicisteis', 'hicieron'],
        'this one is tough'
    ),
    Conj(
        'ir', 'to go',
        ['voy', 'vas', 'va', 'vamos', 'vais', 'van'],
        ['fui', 'fuiste', 'fue', 'fuimos', 'fusteis', 'fueron']
    ),
    Conj(
        'comer', 'to eat',
        ['como', 'comes', 'come', 'comemos', 'comeis', 'comen'],
        ['comi', 'comiste', 'comio', 'comimos', 'comisteis', 'comieron']
    )
]