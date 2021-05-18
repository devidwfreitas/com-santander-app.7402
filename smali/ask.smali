.class public Lask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;


# direct methods
.method public constructor <init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lask;->b:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    iput-object p2, p0, Lask;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lask;->b:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    invoke-static {v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    return-void
.end method
