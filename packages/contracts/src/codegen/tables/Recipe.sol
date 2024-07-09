// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

// Import user types
import { MACHINE_TYPE } from "./../common.sol";

library Recipe {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "", name: "Recipe", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x7462000000000000000000000000000052656369706500000000000000000000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0000000100000000000000000000000000000000000000000000000000000000);

  // Hex-encoded key schema of (uint8, bytes32)
  Schema constant _keySchema = Schema.wrap(0x00210200005f0000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (bytes14[])
  Schema constant _valueSchema = Schema.wrap(0x00000001af000000000000000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](2);
    keyNames[0] = "machineType";
    keyNames[1] = "input";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](1);
    fieldNames[0] = "outputs";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get outputs.
   */
  function getOutputs(MACHINE_TYPE machineType, bytes32 input) internal view returns (bytes14[2] memory outputs) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 0);
    return toStaticArray_bytes14_2(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes14());
  }

  /**
   * @notice Get outputs.
   */
  function _getOutputs(MACHINE_TYPE machineType, bytes32 input) internal view returns (bytes14[2] memory outputs) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 0);
    return toStaticArray_bytes14_2(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes14());
  }

  /**
   * @notice Get outputs.
   */
  function get(MACHINE_TYPE machineType, bytes32 input) internal view returns (bytes14[2] memory outputs) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 0);
    return toStaticArray_bytes14_2(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes14());
  }

  /**
   * @notice Get outputs.
   */
  function _get(MACHINE_TYPE machineType, bytes32 input) internal view returns (bytes14[2] memory outputs) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 0);
    return toStaticArray_bytes14_2(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes14());
  }

  /**
   * @notice Set outputs.
   */
  function setOutputs(MACHINE_TYPE machineType, bytes32 input, bytes14[2] memory outputs) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    StoreSwitch.setDynamicField(_tableId, _keyTuple, 0, EncodeArray.encode(fromStaticArray_bytes14_2(outputs)));
  }

  /**
   * @notice Set outputs.
   */
  function _setOutputs(MACHINE_TYPE machineType, bytes32 input, bytes14[2] memory outputs) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    StoreCore.setDynamicField(_tableId, _keyTuple, 0, EncodeArray.encode(fromStaticArray_bytes14_2(outputs)));
  }

  /**
   * @notice Set outputs.
   */
  function set(MACHINE_TYPE machineType, bytes32 input, bytes14[2] memory outputs) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    StoreSwitch.setDynamicField(_tableId, _keyTuple, 0, EncodeArray.encode(fromStaticArray_bytes14_2(outputs)));
  }

  /**
   * @notice Set outputs.
   */
  function _set(MACHINE_TYPE machineType, bytes32 input, bytes14[2] memory outputs) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    StoreCore.setDynamicField(_tableId, _keyTuple, 0, EncodeArray.encode(fromStaticArray_bytes14_2(outputs)));
  }

  // The length of outputs
  uint256 constant lengthOutputs = 2;

  // The length of outputs
  uint256 constant length = 2;

  /**
   * @notice Get an item of outputs.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function getItemOutputs(MACHINE_TYPE machineType, bytes32 input, uint256 _index) internal view returns (bytes14) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    uint256 _byteLength = StoreSwitch.getDynamicFieldLength(_tableId, _keyTuple, 0);
    uint256 dynamicLength = _byteLength / 14;
    uint256 staticLength = 2;

    if (_index < staticLength && _index >= dynamicLength) {
      return (bytes14(new bytes(0)));
    }

    unchecked {
      bytes memory _blob = StoreSwitch.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 14, (_index + 1) * 14);
      return (bytes14(_blob));
    }
  }

  /**
   * @notice Get an item of outputs.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function _getItemOutputs(MACHINE_TYPE machineType, bytes32 input, uint256 _index) internal view returns (bytes14) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    uint256 _byteLength = StoreCore.getDynamicFieldLength(_tableId, _keyTuple, 0);
    uint256 dynamicLength = _byteLength / 14;
    uint256 staticLength = 2;

    if (_index < staticLength && _index >= dynamicLength) {
      return (bytes14(new bytes(0)));
    }

    unchecked {
      bytes memory _blob = StoreCore.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 14, (_index + 1) * 14);
      return (bytes14(_blob));
    }
  }

  /**
   * @notice Get an item of outputs.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function getItem(MACHINE_TYPE machineType, bytes32 input, uint256 _index) internal view returns (bytes14) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    uint256 _byteLength = StoreSwitch.getDynamicFieldLength(_tableId, _keyTuple, 0);
    uint256 dynamicLength = _byteLength / 14;
    uint256 staticLength = 2;

    if (_index < staticLength && _index >= dynamicLength) {
      return (bytes14(new bytes(0)));
    }

    unchecked {
      bytes memory _blob = StoreSwitch.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 14, (_index + 1) * 14);
      return (bytes14(_blob));
    }
  }

  /**
   * @notice Get an item of outputs.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function _getItem(MACHINE_TYPE machineType, bytes32 input, uint256 _index) internal view returns (bytes14) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    uint256 _byteLength = StoreCore.getDynamicFieldLength(_tableId, _keyTuple, 0);
    uint256 dynamicLength = _byteLength / 14;
    uint256 staticLength = 2;

    if (_index < staticLength && _index >= dynamicLength) {
      return (bytes14(new bytes(0)));
    }

    unchecked {
      bytes memory _blob = StoreCore.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 14, (_index + 1) * 14);
      return (bytes14(_blob));
    }
  }

  /**
   * @notice Update an element of outputs at `_index`.
   */
  function updateOutputs(MACHINE_TYPE machineType, bytes32 input, uint256 _index, bytes14 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreSwitch.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 14), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Update an element of outputs at `_index`.
   */
  function _updateOutputs(MACHINE_TYPE machineType, bytes32 input, uint256 _index, bytes14 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreCore.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 14), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Update an element of outputs at `_index`.
   */
  function update(MACHINE_TYPE machineType, bytes32 input, uint256 _index, bytes14 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreSwitch.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 14), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Update an element of outputs at `_index`.
   */
  function _update(MACHINE_TYPE machineType, bytes32 input, uint256 _index, bytes14 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    unchecked {
      bytes memory _encoded = abi.encodePacked((_element));
      StoreCore.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 14), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(MACHINE_TYPE machineType, bytes32 input) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(MACHINE_TYPE machineType, bytes32 input) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack dynamic data lengths using this table's schema.
   * @return _encodedLengths The lengths of the dynamic fields (packed into a single bytes32 value).
   */
  function encodeLengths(bytes14[2] memory outputs) internal pure returns (EncodedLengths _encodedLengths) {
    // Lengths are effectively checked during copy by 2**40 bytes exceeding gas limits
    unchecked {
      _encodedLengths = EncodedLengthsLib.pack(outputs.length * 14);
    }
  }

  /**
   * @notice Tightly pack dynamic (variable length) data using this table's schema.
   * @return The dynamic data, encoded into a sequence of bytes.
   */
  function encodeDynamic(bytes14[2] memory outputs) internal pure returns (bytes memory) {
    return abi.encodePacked(EncodeArray.encode(fromStaticArray_bytes14_2(outputs)));
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(bytes14[2] memory outputs) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData;
    EncodedLengths _encodedLengths = encodeLengths(outputs);
    bytes memory _dynamicData = encodeDynamic(outputs);

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(MACHINE_TYPE machineType, bytes32 input) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(uint256(uint8(machineType)));
    _keyTuple[1] = input;

    return _keyTuple;
  }
}

/**
 * @notice Cast a dynamic array to a static array.
 * @dev In memory static arrays are just dynamic arrays without the 32 length bytes,
 * so this function moves the pointer to the first element of the dynamic array.
 * If the length of the dynamic array is smaller than the static length,
 * the function returns an uninitialized array to avoid memory corruption.
 * @param _value The dynamic array to cast.
 * @return _result The static array.
 */
function toStaticArray_bytes14_2(bytes14[] memory _value) pure returns (bytes14[2] memory _result) {
  if (_value.length < 2) {
    // return an uninitialized array if the length is smaller than the fixed length to avoid memory corruption
    return _result;
  } else {
    // in memory static arrays are just dynamic arrays without the 32 length bytes
    // (without the length check this could lead to memory corruption)
    assembly {
      _result := add(_value, 0x20)
    }
  }
}

/**
 * @notice Copy a static array to a dynamic array.
 * @dev Static arrays don't have a length prefix, so this function copies the memory from the static array to a new dynamic array.
 * @param _value The static array to copy.
 * @return _result The dynamic array.
 */
function fromStaticArray_bytes14_2(bytes14[2] memory _value) pure returns (bytes14[] memory _result) {
  _result = new bytes14[](2);
  uint256 fromPointer;
  uint256 toPointer;
  assembly {
    fromPointer := _value
    toPointer := add(_result, 0x20)
  }
  Memory.copy(fromPointer, toPointer, 64);
}