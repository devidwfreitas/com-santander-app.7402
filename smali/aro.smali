.class public Laro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larn;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lard;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Laro;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laro;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lard;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lard;",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Laro;->b:Lard;

    .line 23
    iput-object p2, p0, Laro;->c:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lark;)Lark;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;",
            "Lark;",
            ")",
            "Lark;"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 35
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->Agent:Laqb;

    if-ne v3, v4, :cond_2

    .line 36
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TypingStarted:Lapu;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TypingStopped:Lapu;

    if-ne v3, v4, :cond_2

    .line 37
    :cond_0
    invoke-virtual {v0}, Lark;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lark;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move-object v1, v0

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Laro;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laro;->c:Ljava/util/List;

    .line 77
    :cond_0
    iget-object v0, p0, Laro;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Laro;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Laro;->b:Lard;

    invoke-virtual {v0}, Lard;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 54
    invoke-virtual {v0}, Lark;->i()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TypingStarted:Lapu;

    if-ne v3, v4, :cond_0

    .line 56
    sget-object v3, Laro;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Typing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Laro;->b:Lard;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lard;->c(Z)V

    move-object v0, v1

    .line 67
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Laro;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
