.class public Lbr/com/santander/uisdk/error/SantanderChatErrorItem;
.super Lbr/com/santander/uisdk/error/SantanderErrorItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 14
    sget v0, Lalr;->ic_error_item_chat:I

    const-string v1, "Chat"

    invoke-direct {p0, v0, v1, p1, p2}, Lbr/com/santander/uisdk/error/SantanderErrorItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 15
    return-void
.end method
