// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.24;

import {ICOWAMMPoolFactory} from "../interfaces/ICOWAMMPoolFactory.sol";

/// @title Snapshot of events that were indexed relating to CoW AMMs that had been deployed with the legacy method
/// @dev The legacy method, where currently 99.99% of the liquidity for CoW AMMs is deployed, emits events within
/// the ComposableCoW framework, which is not forward compatible with the CoW AMM interface standard. To abridge
/// this gap, the utils contained within the repository were used to generate a snapshot of the legacy CoW AMMs.
/// The output of this snapshot is contained within this contract, and is used to provide a forwards compatible
/// interface for the CoW AMM interface standard.
abstract contract Snapshot {
    /// @dev Broadcasts the legacy CoW AMMs to the CoW AMM interface standard
    function broadcastLegacy() internal {
        uint256 chainId;
        assembly {
            chainId := chainid()
        }

        if (chainId == 1) {
            emitHelper(0x9941fD7dB2003308E7Ee17B04400012278F12aC6);
            emitHelper(0xB3Bf81714f704720dcB0351fF0d42eCa61B069FC);
            emitHelper(0x301076c36E034948A747BB61bAB9CD03f62672e3);
            emitHelper(0x027e1CbF2C299CBa5eB8A2584910d04f1A8Aa403);
            emitHelper(0xBEEf5aFE88eF73337e5070aB2855d37dBF5493A4);
            emitHelper(0xC6B13D5E662FA0458F03995bCb824a1934aA895f);
            emitHelper(0xd7cb8Cc1B56356BB7b78D02E785eAD28e2158660);
        } else if (chainId == 100) {
            emitHelper(0x321eB07a898A9F4FF5b23C0eCC2F5e78F297e6C8);
            emitHelper(0xbc6159Fd429be18206e60b3BB01D7289F905511B);
            emitHelper(0xE5d1Aa8565f5DBFc06cDE20dFD76B4C7C6d43BD5);
            emitHelper(0x9d8570ef9A519CA81daec35212f435D9843bA564);
            emitHelper(0xd97c31E53f16f495715ce71e12E11B9545eEDd8b);
            emitHelper(0xFf1bD3d570e3544c183ba77F5A4D3Cc742C8D2b3);
            emitHelper(0x209d269DfD66b9CEC764De7eb6FEFC24f75BdD48);
            emitHelper(0xc37575Ad8EFE530FD8A79aEB0087e5872a24DABC);
            emitHelper(0x1c7828DAdAdE12a848f36BE8E2d3146462ABfF68);
            emitHelper(0xAbA5294BBA7d3635C2A3e44d0e87EA7f58898fB7);
            emitHelper(0x6Eb7Be972aeBB6bE2d9aCF437Cb412C0AbeE912B);
            emitHelper(0xC4d09969AAD7f252c75DD352bBBd719e34Ed06AD);
            emitHelper(0xa25Af86A5dbeA45E9fd70c1879489F63D081AD44);
            emitHelper(0x57492cb6C8ee2998E9D83dDc8c713e781ffE548E);
            emitHelper(0xC33E3ec14556A8e71be3097Fe2dC8C0b9119C897);
        }
    }

    function emitHelper(address amm) internal {
        emit ICOWAMMPoolFactory.COWAMMPoolCreated(amm);
    }

    /// @dev Returns the IConditionalOrder.ConditionalOrderParams for a legacy CoW AMM. Returns bytes(0) if the pool
    /// isn't found in the snapshot data.
    function getSnapshot(address amm) public view returns (bytes memory) {
        uint256 chainId;
        assembly {
            chainId := chainid()
        }

        if (chainId == 1) {
            // Ethereum mainnet generated snapshot (current as of block #20166607)
            if (amm == 0x9941fD7dB2003308E7Ee17B04400012278F12aC6) {
                return
                hex"000000000000000000000000000000000000000000000000000000000000002000000000000000000000000034323b933096534e43958f6c7bf44f2bb59424da559d5fda20be80608e4d5ea1b41e6b9330efca7934beb094281dd4d8f4889374000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000000000000000000000020000000000000000000000000514910771af9ca656af840dff83e8264ecf986ca000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000000000000000000000000000079ef7f110fdfae4000000000000000000000000ad37fe3ddedf8cdee1022da1b17412cfb649559600000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c890000000000000000000000000000000000000000000000000000000000000020e99481dc77691d8e2456e5f3f61c1810adfc1503000200000000000000000018";
            } else if (amm == 0xB3Bf81714f704720dcB0351fF0d42eCa61B069FC) {
                return
                hex"000000000000000000000000000000000000000000000000000000000000002000000000000000000000000034323b933096534e43958f6c7bf44f2bb59424dad003838829115f5d9ff3ed69c8d2b4b26e10eb1a79331206c28fbb4734390a5e000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000000000000000000000020000000000000000000000000808507121b80c02388fad14726482e061b8da827000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000000000000000000000000000189b23422a9b84d8000000000000000000000000ad37fe3ddedf8cdee1022da1b17412cfb649559600000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c890000000000000000000000000000000000000000000000000000000000000020fd1cf6fd41f229ca86ada0584c63c49c3d66bbc9000200000000000000000438";
            } else if (amm == 0x301076c36E034948A747BB61bAB9CD03f62672e3) {
                return
                hex"000000000000000000000000000000000000000000000000000000000000002000000000000000000000000034323b933096534e43958f6c7bf44f2bb59424daca44b6a304baa16d11b6db07066c1276b1273ee3f94590bbd03201a61882af9a000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000000000000000000000020000000000000000000000000a0b86991c6218b36c1d19d4a2e9eb0ce3606eb48000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000000000000000000000000000000000000098cb76000000000000000000000000573cc0c800048f94e022463b9214d92c2d65e97b00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c890000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b4e16d0168e52d35cacd2c6185b44281ec28c9dc";
            } else if (amm == 0x027e1CbF2C299CBa5eB8A2584910d04f1A8Aa403) {
                return
                hex"000000000000000000000000000000000000000000000000000000000000002000000000000000000000000034323b933096534e43958f6c7bf44f2bb59424dac5a0e756ac88c1d3a4c41900d977fe93c2d34fc95a00ca3e84eb4c6b50faf949000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000000000000000000000020000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc20000000000000000000000005afe3855358e112b5647b952709e6165e1c1eeee000000000000000000000000000000000000000000000000016345785d8a0000000000000000000000000000573cc0c800048f94e022463b9214d92c2d65e97b00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c8900000000000000000000000000000000000000000000000000000000000000200000000000000000000000002e7e978da0c53404a8cf66ed4ba2c7706c07b62a";
            } else if (amm == 0xBEEf5aFE88eF73337e5070aB2855d37dBF5493A4) {
                return
                hex"000000000000000000000000000000000000000000000000000000000000002000000000000000000000000034323b933096534e43958f6c7bf44f2bb59424da0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000000000000000000000020000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000def1ca1fb7fbcdc777520aa7f396b4e015f497ab000000000000000000000000000000000000000000000000025bf6196bd10000000000000000000000000000ad37fe3ddedf8cdee1022da1b17412cfb649559600000000000000000000000000000000000000000000000000000000000000c0d661a16b0e85eadb705cf5158132b5dd1ebc0a49929ef68097698d15e2a4e3b40000000000000000000000000000000000000000000000000000000000000020de8c195aa41c11a0c4787372defbbddaa31306d2000200000000000000000181";
            } else if (amm == 0xC6B13D5E662FA0458F03995bCb824a1934aA895f) {
                return
                hex"000000000000000000000000000000000000000000000000000000000000002000000000000000000000000034323b933096534e43958f6c7bf44f2bb59424da932542294ff270a8bbdbe1fb921de3d09c9749dc35627361fc17c44b9b026b810000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000008390a1da07e376ef7add4be859ba74fb83aa02d5000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000000000000000000000000000000000aec1c94998000000000000000000000000573cc0c800048f94e022463b9214d92c2d65e97b00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c89000000000000000000000000000000000000000000000000000000000000002000000000000000000000000069c66beafb06674db41b22cfc50c34a93b8d82a2";
            } else if (amm == 0xd7cb8Cc1B56356BB7b78D02E785eAD28e2158660) {
                return
                hex"000000000000000000000000000000000000000000000000000000000000002000000000000000000000000034323b933096534e43958f6c7bf44f2bb59424da80ba533f014ef4238ab7ad203c0aeacbf30a71c0346140db77c43ae3121afadd000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000000000000000000000020000000000000000000000000aea46a60368a7bd060eec7df8cba43b7ef41ad85000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000000000000000000000000000336632e53c8ecf04000000000000000000000000573cc0c800048f94e022463b9214d92c2d65e97b00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c8900000000000000000000000000000000000000000000000000000000000000200000000000000000000000004042a04c54ef133ac2a3c93db69d43c6c02a330b";
            }
        } else if (chainId == 100) {
            // Gnosis chain generated snapshot (current as of block #34639359)
            if (amm == 0x321eB07a898A9F4FF5b23C0eCC2F5e78F297e6C8) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a851642c346879a47491d77e73a511affcaf760aad45247d401e544a02c68749b71e0000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000006a023ccd1ff6f2045c3309768ead9e68f978f6e10000000000000000000000008e5bbbb09ed1ebde8674cda39a0c169401db42520000000000000000000000000000000000000000000000000009b93c42ca47f2000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c89000000000000000000000000000000000000000000000000000000000000002066888e4f35063ad8bb11506a6fde5024fb4f1db0000100000000000000000053";
            } else if (amm == 0xbc6159Fd429be18206e60b3BB01D7289F905511B) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a851d85c99996d84d25387bc0d01e50e3ea814f64e7e04a3b949a571789e196c5a910000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000006a023ccd1ff6f2045c3309768ead9e68f978f6e1000000000000000000000000e91d153e0b41518a2ce8dd3d7944fa863463a97d000000000000000000000000000000000000000000000000000affd9fdeb8e08000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c890000000000000000000000000000000000000000000000000000000000000020a99fd9950b5d5dceeaf4939e221dca8ca9b938ab000100000000000000000025";
            } else if (amm == 0xE5d1Aa8565f5DBFc06cDE20dFD76B4C7C6d43BD5) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a851437a72b19b25e8b62fdfb81146ec83c66462138d3d9e08998594853566fa9add000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000000000000000000000020000000000000000000000000177127622c4a00f3d409b75571e12cb3c8973d3c0000000000000000000000006c76971f98945ae98dd7d4dfca8711ebea946ea600000000000000000000000000000000000000000000000146e114355e0f6088000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c8900000000000000000000000000000000000000000000000000000000000000204cdabe9e07ca393943acfb9286bbbd0d0a310ff600020000000000000000005c";
            } else if (amm == 0x9d8570ef9A519CA81daec35212f435D9843bA564) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a8511ea56ac96a6369d36ef3fe56ae0ddff8d0cc89e1623095239c5ceed2505aa2810000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000009c58bacc331c9aa871afd802db6379a98e80cedb0000000000000000000000006a023ccd1ff6f2045c3309768ead9e68f978f6e1000000000000000000000000000000000000000000000000006b43c27d2e8300000000000000000000000000e089049027b95c2745d1a954bc1d245352d884e900000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c89000000000000000000000000000000000000000000000000000000000000002000000000000000000000000028dbd35fd79f48bfa9444d330d14683e7101d817";
            } else if (amm == 0xd97c31E53f16f495715ce71e12E11B9545eEDd8b) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a85178a729ee3008c7d48832d02267b72e5f34ada8f554a6731a368f01590ed71b34000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001800000000000000000000000000000000000000000000000000000000000000020000000000000000000000000cb444e90d8198415266c6a2724b7900fb12fc56e000000000000000000000000e91d153e0b41518a2ce8dd3d7944fa863463a97d0000000000000000000000000000000000000000000000008156197a5425c0c8000000000000000000000000bd91a72dc3d9b5d9b16ee8638da1fc65311bd90a00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c890000000000000000000000000000000000000000000000000000000000000080000000000000000000000000ab70bcb260073d036d1660201e9d5405f5829b7a000000000000000000000000678df3415fc31947da4324ec63212874be5a82f800000000000000000000000000000000000000000000000000000000000151800000000000000000000000000000000000000000000000000000000000000001";
            } else if (amm == 0xFf1bD3d570e3544c183ba77F5A4D3Cc742C8D2b3) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a851b4023c9fef324b3949fcfd868c239a4c7426bd6ca7089d6532ee7dac0c36aac9000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001200000000000000000000000000000000000000000000000000000000000000020000000000000000000000000e91d153e0b41518a2ce8dd3d7944fa863463a97d0000000000000000000000006a023ccd1ff6f2045c3309768ead9e68f978f6e1000000000000000000000000000000000000000000000001e5b8fa8fe2ac0000000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c890000000000000000000000000000000000000000000000000000000000000020a99fd9950b5d5dceeaf4939e221dca8ca9b938ab000100000000000000000025";
            } else if (amm == 0x209d269DfD66b9CEC764De7eb6FEFC24f75BdD48) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a851f0e8ec512b2507dae99175a0a4792d8a53e0863fbb5e735a5c993295bbd17f480000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000006c76971f98945ae98dd7d4dfca8711ebea946ea60000000000000000000000009c58bacc331c9aa871afd802db6379a98e80cedb00000000000000000000000000000000000000000000000000094f8d9168e271000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c8900000000000000000000000000000000000000000000000000000000000000204683e340a8049261057d5ab1b29c8d840e75695e00020000000000000000005a";
            } else if (amm == 0xc37575Ad8EFE530FD8A79aEB0087e5872a24DABC) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a851a2029fbb545978d05378b6df19e3754fe5ed2d0ba1e051027503934372f7beb20000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000009c58bacc331c9aa871afd802db6379a98e80cedb000000000000000000000000177127622c4a00f3d409b75571e12cb3c8973d3c0000000000000000000000000000000000000000000000000052ba9efc38441a000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c89000000000000000000000000000000000000000000000000000000000000002021d4c792ea7e38e0d0819c2011a2b1cb7252bd9900020000000000000000001e";
            } else if (amm == 0x1c7828DAdAdE12a848f36BE8E2d3146462ABfF68) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a85105416460deb76d57af601be17e777b93592d8d4d4a4096c57876a91c84f418080000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000009c58bacc331c9aa871afd802db6379a98e80cedb000000000000000000000000ce11e14225575945b8e6dc0d4f2dd4c570f79d9f000000000000000000000000000000000000000000000000002386f26fc100000000000000000000000000009634ca647474b6b78d3382331a77cd00a8a940da00000000000000000000000000000000000000000000000000000000000000c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000000000";
            } else if (amm == 0xAbA5294BBA7d3635C2A3e44d0e87EA7f58898fB7) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a851d1e868d120e326e5581caa39852bb0da9234a511ed76e6f7a9dcceb0d5f154c70000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000006c76971f98945ae98dd7d4dfca8711ebea946ea6000000000000000000000000af204776c7245bf4147c2612bf6e5972ee48370100000000000000000000000000000000000000000000000000098e46995425ca000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c890000000000000000000000000000000000000000000000000000000000000020bc2acf5e821c5c9f8667a36bb1131dad26ed64f9000200000000000000000063";
            } else if (amm == 0x6Eb7Be972aeBB6bE2d9aCF437Cb412C0AbeE912B) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a8512e31981e34960969eb549f5e826cf77f655e72b03603ad574a79fd015f4de4de0000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000006c76971f98945ae98dd7d4dfca8711ebea946ea6000000000000000000000000af204776c7245bf4147c2612bf6e5972ee483701000000000000000000000000000000000000000000000000000a16c95a4d2e3c000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c0ce9e05c2aee5f22f9941c4cd1f1a1d13194b109779422d5ad9a980157bd0f1640000000000000000000000000000000000000000000000000000000000000020bc2acf5e821c5c9f8667a36bb1131dad26ed64f9000200000000000000000063";
            } else if (amm == 0xC4d09969AAD7f252c75DD352bBBd719e34Ed06AD) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a851209c17d9ebe3ac7352795f7f8b3d14d253d92430831d3b2c3965f9a578da7618000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001800000000000000000000000000000000000000000000000000000000000000020000000000000000000000000e91d153e0b41518a2ce8dd3d7944fa863463a97d0000000000000000000000006c76971f98945ae98dd7d4dfca8711ebea946ea60000000000000000000000000000000000000000000000008aa3a52815262f58000000000000000000000000bd91a72dc3d9b5d9b16ee8638da1fc65311bd90a00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c8900000000000000000000000000000000000000000000000000000000000000800000000000000000000000000064ac007ff665cf8d0d3af5e0ad1c26a3f853ea000000000000000000000000a767f745331d267c7751297d982b050c9398562700000000000000000000000000000000000000000000000000000000000151800000000000000000000000000000000000000000000000000000000000000001";
            } else if (amm == 0xa25Af86A5dbeA45E9fd70c1879489F63D081AD44) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a851560d33bcc26b7f10765f8ae10b1abc4ed265ba0c7a1f9948d06de97c31044aee0000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000004d18815d14fe5c3304e87b3fa18318baa5c238200000000000000000000000009c58bacc331c9aa871afd802db6379a98e80cedb0000000000000000000000000000000000000000000000000de0b6b3a7640000000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020a9b2234773cc6a4f3a34a770c52c931cba5c24b2000200000000000000000087";
            } else if (amm == 0x57492cb6C8ee2998E9D83dDc8c713e781ffE548E) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a8513956efd63537b00bb3b152d3c4961207b6ca14d6f506c66fc0aef4c8e2e176b5000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000001400000000000000000000000000000000000000000000000000000000000000020000000000000000000000000cb444e90d8198415266c6a2724b7900fb12fc56e0000000000000000000000009c58bacc331c9aa871afd802db6379a98e80cedb000000000000000000000000000000000000000000000000000000000000004500000000000000000000000015b4c67070d3748b8ec93c8a32f7efe2e8f684c900000000000000000000000000000000000000000000000000000000000000c0056e9806d953dbe2df4352a90ad2c1148c51460e941107f0909fae382b1661cf000000000000000000000000000000000000000000000000000000000000004000000000000000000000000022441d81416430a54336ab28765abd31a792ad37000000000000000000000000ab70bcb260073d036d1660201e9d5405f5829b7a";
            } else if (amm == 0xC33E3ec14556A8e71be3097Fe2dC8C0b9119C897) {
                return
                hex"0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000b148f40fff05b5ce6b22752cf8e454b556f7a85159457ac6201da7713efecd84618c7a168e88b9cb7d1c0db128af1efe0a08bbb10000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000012000000000000000000000000000000000000000000000000000000000000000200000000000000000000000006c76971f98945ae98dd7d4dfca8711ebea946ea6000000000000000000000000af204776c7245bf4147c2612bf6e5972ee483701000000000000000000000000000000000000000000000000000a17273fc14b64000000000000000000000000d3a84895080609e1163c80b2bd65736db1b86bec00000000000000000000000000000000000000000000000000000000000000c04d821ddc9d656177dad4d5c2f76a4bff2ed514ff69fa4aa4fd869d6e98d55c890000000000000000000000000000000000000000000000000000000000000020bc2acf5e821c5c9f8667a36bb1131dad26ed64f9000200000000000000000063";
            }
        }

        return hex"";
    }
}