.class public Lasu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;


# direct methods
.method public constructor <init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lasu;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lasu;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Z)Z

    .line 414
    iget-object v0, p0, Lasu;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    iget-object v1, p0, Lasu;->a:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Z)V

    .line 415
    return-void
.end method
