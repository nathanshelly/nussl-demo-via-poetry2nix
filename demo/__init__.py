import nussl

def main():
    nussl.separation.primitive.HPSS(nussl.AudioSignal()).interact(share=True)

if __name__ == '__main__':
    main()
