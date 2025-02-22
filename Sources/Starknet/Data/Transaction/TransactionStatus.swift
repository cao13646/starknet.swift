import Foundation

public enum StarknetTransactionExecutionStatus: String, Codable {
    case succeeded = "SUCCEEDED"
    case reverted = "REVERTED"

    public var encodedValue: Felt {
        Felt.fromShortString(self.rawValue.lowercased())!
    }
}

public enum StarknetTransactionFinalityStatus: String, Codable {
    case acceptedL1 = "ACCEPTED_ON_L1"
    case acceptedL2 = "ACCEPTED_ON_L2"

    public var encodedValue: Felt {
        Felt.fromShortString(self.rawValue.lowercased())!
    }
}

public enum StarknetGatewayTransactionStatus: String, Codable {
    case pending = "PENDING"
    case rejected = "REJECTED"
    case acceptedL1 = "ACCEPTED_ON_L1"
    case acceptedL2 = "ACCEPTED_ON_L2"
    case received = "RECEIVED"
    case notReceived = "NOT_RECEIVED"
    case reverted = "REVERTED"
    case aborted = "ABORTED"

    public var encodedValue: Felt {
        Felt.fromShortString(self.rawValue.lowercased())!
    }
}
