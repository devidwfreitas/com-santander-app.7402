.class Lasp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laso;


# direct methods
.method constructor <init>(Laso;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lasp;->a:Laso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lasp;->a:Laso;

    iget-object v0, v0, Laso;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->c(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lasp;->a:Laso;

    iget-object v1, v1, Laso;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Latb;

    move-result-object v1

    invoke-virtual {v1}, Latb;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 323
    return-void
.end method
