.class Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalz;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;I)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder$1;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;

    iput p2, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lbr/com/santander/uisdk/SantanderSwitch;Z)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder$1;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;

    invoke-static {v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->access$000(Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;)Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;

    move-result-object v0

    iget v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder$1;->val$position:I

    invoke-interface {v0, p1, p2, v1}, Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;->onChangeSwitchButton(Lbr/com/santander/uisdk/SantanderSwitch;ZI)V

    .line 51
    return-void
.end method
