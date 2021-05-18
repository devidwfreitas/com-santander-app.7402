.class Llxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Lkob;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llxc;


# direct methods
.method constructor <init>(Llxc;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Llxi;->a:Llxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 358
    check-cast p1, Lkob;

    invoke-virtual {p0, p1}, Llxi;->a(Lkob;)V

    return-void
.end method

.method public a(Lkob;)V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Llxi;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Llxi;->a:Llxc;

    iget-object v1, p0, Llxi;->a:Llxc;

    invoke-static {v1}, Llxc;->d(Llxc;)Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llxc;->a(Llxc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p0, Llxi;->a:Llxc;

    invoke-static {v1, v0}, Llxc;->b(Llxc;Ljava/lang/String;)V

    goto :goto_0
.end method
