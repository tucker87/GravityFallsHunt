const ensureArray = value => (Array.isArray(value) ? value : [value])

const entry = (title, url, codes, cipher, answers, key) => ({
  title,
  url,
  codes: ensureArray(codes),
  cipher,
  answers: ensureArray(answers),
  key,
})

const episodes = [
  entry(
    'S02 E01',
    'https://youtu.be/wTnU6LOoRPk',
    'wjz ok ep xacejo',
    'ceaser',
    'and so it begins',
  ),
  entry(
    'S02 E02',
    'https://youtu.be/5TJY-8hhWko',
    'qi erh xli fscw ex xas eq',
    'ceaser',
    'me and the boys at two am',
  ),
  entry(
    'S02 E03',
    'https://youtu.be/7HdYJosTb9s',
    ['rg nzb yv wruurxfog gl xlmgrmfv zolmv', 'wrhxliw.tt/aXCnU93QEE'],
    'atbash',
    ['it may be difficult to continue alone', 'discord.gg/zCXmF93JVV'],
  ),
]
const discords = [
  entry(
    "Mortius' role",
    null,
    'dm hbvc ai qkmec awjy Kzsxrw Xzwhtxuk!',
    'vigenere',
    'be surl to drink your Gilded Tiefling!',
    'cipherhunters',
  ),
  entry(
    "Mortius' role #2",
    null,
    "Qofm arkkvv dlf'k wulbvt gvbtuxzgu bram",
    'vigenere',
    "Just seeing who's paying attention hehe",
    'huntingciphers',
  ),
  entry(
    "Casper's role",
    null,
    'Tlujf facv qfht xr xvrpsuy uje Olhluteuyft!',
    'vigenere',
    'Three days left to support the Kickstarter!',
    'AEDFBC',
  ),
]

export { episodes, discords }
