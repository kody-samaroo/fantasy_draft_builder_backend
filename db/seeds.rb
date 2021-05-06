# Destroy all records and reset the primary keys
User.destroy_all
User.reset_pk_sequence
Team.destroy_all
Team.reset_pk_sequence
Player.destroy_all
Player.reset_pk_sequence
Contract.destroy_all
Contract.reset_pk_sequence

# Call API and create instances from API data
responses = Ball.all

responses.each do |response|
    Player.create(
        :id => response["id"],
        :first_name => response["first_name"],
        :last_name => response["last_name"],
        :position => response["position"],
        :plays_for_team => response["team"]["full_name"]
    )
end
# Default user seeds
joe = User.create(name: "Joe", password: "12345", email: "thisisjoe45@gmail.com")
ken = User.create(name: "Kenny", password: "12345", email: "kennyomega@gmail.com")

# Default user team
tigers = Team.create(team_name: "Tigers", user_id: joe.id)
bros = Team.create(team_name: "Bros", user_id: joe.id)

# Destroy duplicates and non-active players
playerIDs = [
    3,
    4,
    6,
    3547296,
    666400,
    8,
    9,
    10,
    12,
    15,
    2148,
    17,
    19,
    20,
    21,
    3547242,
    22,
    3547095,
    3547239,
    27,
    3547287,
    30,
    666423,
    31,
    32,
    33,
    35,
    36,
    666429,
    37,
    38,
    42,
    44,
    45,
    3547265,
    46,
    666442,
    48,
    49,
    51,
    666446,
    53,
    54,
    666451,
    56,
    57,
    58,
    666459,
    59,
    60,
    666463,
    61,
    62,
    666468,
    65,
    9051997,
    66,
    69,
    70,
    666476,
    72,
    68,
    73,
    74,
    75,
    76,
    77,
    79,
    666486,
    81,
    3547304,
    666489,
    83,
    87,
    85,
    86,
    89,
    91,
    50661,
    666505,
    100,
    666508,
    666511,
    101,
    88102,
    104,
    105,
    666517,
    107,
    108,
    110,
    112,
    666523,
    114,
    115,
    3547305,
    117,
    118,
    666530,
    9530711,
    120,
    123,
    125,
    3547163,
    128,
    129,
    130,
    131,
    132,
    666541,
    134,
    3547197,
    666543,
    135,
    136,
    137,
    138,
    139,
    140,
    3547238,
    666551,
    3547164,
    144,
    145,
    146,
    147,
    151,
    666560,
    153,
    154,
    666564,
    158,
    9338307,
    3547275,
    159,
    3547297,
    160,
    161,
    666570,
    165,
    166,
    666577,
    167,
    168,
    666581,
    169,
    171,
    172,
    173,
    174,
    175,
    3547302,
    9318184,
    176,
    3091,
    177,
    178,
    180,
    182,
    184,
    185,
    187,
    666604,
    188,
    189,
    666608,
    666609,
    666611,
    3547290,
    191,
    192,
    666616,
    194,
    196,
    3547292,
    197,
    200,
    199,
    202,
    201,
    203,
    666626,
    3547241,
    204,
    205,
    206,
    207,
    210,
    211,
    212,
    3547281,
    666641,
    213,
    214,
    215,
    216,
    217,
    218,
    219,
    666650,
    2175,
    220,
    3547283,
    3547266,
    666656,
    223,
    224,
    225,
    226,
    227,
    228,
    229,
    233,
    234,
    236,
    716,
    666672,
    237,
    666675,
    666676,
    240,
    666679,
    242,
    666682,
    243,
    244,
    246,
    248,
    3547291,
    3547274,
    249,
    247,
    250,
    251,
    666692,
    252,
    253,
    254,
    257,
    3547295,
    259,
    666703,
    260,
    261,
    264,
    265,
    7155648,
    267,
    666713,
    268,
    269,
    270,
    272,
    3547298,
    273,
    274,
    277,
    278,
    666729,
    282,
    283,
    284,
    285,
    286,
    288,
    290,
    666743,
    296,
    297,
    3547293,
    666747,
    666748,
    666751,
    3547294,
    666754,
    301,
    3547289,
    303,
    304,
    666762,
    305,
    3547300,
    306,
    307,
    666767,
    309,
    667302,
    313,
    3547299,
    314,
    315,
    319,
    318,
    320,
    322,
    666783,
    326,
    666786,
    666788,
    328,
    329,
    330,
    666794,
    334,
    335,
    337,
    338,
    339,
    340,
    343,
    344,
    3547268,
    345,
    666809,
    347,
    50927,
    348,
    349,
    350,
    3547207,
    353,
    354,
    666818,
    356,
    3547244,
    666821,
    357,
    358,
    351,
    666824,
    359,
    3547263,
    360,
    666831,
    365,
    367,
    368,
    369,
    2189,
    666837,
    3547169,
    370,
    371,
    373,
    3547271,
    666848,
    2309958,
    376,
    666849,
    375,
    377,
    378,
    379,
    380,
    383,
    3547276,
    3547269,
    386,
    387,
    389,
    3547270,
    667378,
    3547282,
    391,
    3547277,
    397,
    666871,
    399,
    666873,
    400,
    401,
    402,
    403,
    404,
    405,
    666881,
    2080,
    407,
    408,
    409,
    410,
    3547280,
    413,
    414,
    416,
    666894,
    417,
    419,
    666900,
    420,
    422,
    3547264,
    421,
    426,
    3547273,
    3547279,
    3547267,
    666908,
    432,
    3547301,
    434,
    435,
    436,
    439,
    3547306,
    666919,
    443,
    444,
    666923,
    3547215,
    3547285,
    446,
    3547243,
    666925,
    2151,
    447,
    448,
    450,
    666930,
    452,
    455,
    456,
    457,
    458,
    1603383,
    460,
    666940,
    462,
    1014,
    666952,
    1567838,
    666953,
    472,
    666956,
    473,
    474,
    475,
    666965,
    480,
    476,
    3547286,
    3547240,
    3547288
]
players = Player.all
players.each do |player|
    if !playerIDs.include?(player.id)
        Player.destroy(player.id)
    end
end

puts '================== SEED =================='