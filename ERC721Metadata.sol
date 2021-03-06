pragma solidity ^0.4.24;

/// @title Metadata extension to ERC-721 interface)

contract ERC721Metadata {

    /// @dev ERC-165 (draft) interface signature for ERC721
    // bytes4 internal constant INTERFACE_SIGNATURE_ERC721Metadata = // 0x2a786f11
    //     bytes4(keccak256('name()')) ^
    //     bytes4(keccak256('symbol()')) ^
    //     bytes4(keccak256('hutUri(uint256)'));

    ///  A descriptive name for a collection of huts managed by this
    ///  contract
    function name() public pure returns (string _name);

    /// @notice An abbreviated name for huts managed by this contract
    function symbol() public pure returns (string _symbol);

    /// @notice A distinct URI (RFC 3986) for a given token.
    /// @dev If:
    ///  * The URI is a URL
    ///  * The URL is accessible
    ///  * The URL points to a valid JSON file format (ECMA-404 2nd ed.)
    ///  * The JSON base element is an object
    ///  then these names of the base element SHALL have special meaning:
    ///  * "name": A string identifying the item to which `_hutId` grants
    ///    ownership
    ///  * "description": A string detailing the item to which `_hutId` grants
    ///    ownership
    ///  * "image": A URI pointing to a file of image/* mime type representing
    ///    the item to which `_hutId` grants ownership
    ///  Wallets and exchanges MAY display this to the end user.
    ///  Consider making any images at a width between 320 and 1080 pixels and
    ///  aspect ratio between 1.91:1 and 4:5 inclusive.
    function hutUri(uint256 _hutId) external view returns (string _hutUri);
}
