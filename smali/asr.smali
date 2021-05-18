.class Lasr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lasq;


# direct methods
.method constructor <init>(Lasq;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lasr;->a:Lasq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lasr;->a:Lasq;

    iget-object v0, v0, Lasq;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->d(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    .line 349
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    invoke-interface {v0}, Lapa;->j()V

    .line 352
    :cond_0
    return-void
.end method
