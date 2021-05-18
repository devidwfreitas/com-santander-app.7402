.class public Lfxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lfyg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lfxu;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfyg;Lfyg;)I
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p1}, Lfyg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Lfyg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 487
    const/4 v0, -0x1

    .line 491
    :goto_0
    return v0

    .line 488
    :cond_0
    invoke-virtual {p1}, Lfyg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Lfyg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 489
    const/4 v0, 0x1

    goto :goto_0

    .line 491
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 484
    check-cast p1, Lfyg;

    check-cast p2, Lfyg;

    invoke-virtual {p0, p1, p2}, Lfxu;->a(Lfyg;Lfyg;)I

    move-result v0

    return v0
.end method
