package ${packageName}.common;

public enum EditorAction {
    New(0),
    Edit(1);

    private final int value;

    EditorAction(int value) {

        this.value = value;
    }

    public static EditorAction fromValue(int value) {
        for (EditorAction action : EditorAction.values()) {
            if (action.getValue() == value) {
                return action;
            }
        }

        throw new IllegalArgumentException("Invalid value!");
    }

    public int getValue() {
        return value;
    }
}
