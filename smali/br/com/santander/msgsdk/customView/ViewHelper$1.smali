.class Lbr/com/santander/msgsdk/customView/ViewHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/customView/ViewHelper;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/customView/ViewHelper;Ljava/lang/String;Lbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;->this$0:Lbr/com/santander/msgsdk/customView/ViewHelper;

    iput-object p2, p0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;->val$swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragStateChanged(I)V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;->this$0:Lbr/com/santander/msgsdk/customView/ViewHelper;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/ViewHelper;->access$000(Lbr/com/santander/msgsdk/customView/ViewHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;->val$id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;->this$0:Lbr/com/santander/msgsdk/customView/ViewHelper;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/ViewHelper;->access$100(Lbr/com/santander/msgsdk/customView/ViewHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;->this$0:Lbr/com/santander/msgsdk/customView/ViewHelper;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/ViewHelper$1;->val$swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0, v1, v2}, Lbr/com/santander/msgsdk/customView/ViewHelper;->access$200(Lbr/com/santander/msgsdk/customView/ViewHelper;Ljava/lang/String;Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    .line 34
    :cond_0
    return-void
.end method
