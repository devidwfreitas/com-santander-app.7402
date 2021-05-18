.class public Lfet;
.super Lfew;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lfet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfet;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lfew;-><init>()V

    return-void
.end method

.method public static c(Lfdu;Lfdu;)Lfdu;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 96
    .line 98
    invoke-virtual {p1, p0}, Lfdu;->c(Lfdu;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    :cond_0
    invoke-virtual {p0, v5, v3}, Lfdu;->a(II)Lfdu;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v3, v4}, Lfdu;->a(II)Lfdu;

    move-result-object p0

    .line 103
    invoke-virtual {p1, v0}, Lfdu;->c(Lfdu;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 126
    :cond_1
    :goto_0
    return-object p0

    .line 106
    :cond_2
    invoke-virtual {p1, p0}, Lfdu;->c(Lfdu;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    move-object p0, v0

    .line 117
    :cond_4
    invoke-virtual {p0, v3, v5}, Lfdu;->a(II)Lfdu;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v4, v3}, Lfdu;->a(II)Lfdu;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Lfdu;->c(Lfdu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 121
    invoke-virtual {p1, v1}, Lfdu;->c(Lfdu;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, v1

    .line 123
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;Lfdu;)Lfdu;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfdu;",
            ">;",
            "Lfdu;",
            ")",
            "Lfdu;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 40
    if-nez p2, :cond_0

    .line 41
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfdu;

    .line 80
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lfeu;

    invoke-direct {v0, p0, p2}, Lfeu;-><init>(Lfet;Lfdu;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    sget-object v0, Lfet;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewfinder size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lfet;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview in order of preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfdu;

    goto :goto_0
.end method

.method public b(Lfdu;Lfdu;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 147
    invoke-static {p1, p2}, Lfet;->c(Lfdu;Lfdu;)Lfdu;

    move-result-object v0

    .line 148
    sget-object v1, Lfet;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Scaled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Want: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v1, v0, Lfdu;->a:I

    iget v2, p2, Lfdu;->a:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 151
    iget v2, v0, Lfdu;->b:I

    iget v3, p2, Lfdu;->b:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 153
    new-instance v3, Landroid/graphics/Rect;

    neg-int v4, v1

    neg-int v5, v2

    iget v6, v0, Lfdu;->a:I

    sub-int v1, v6, v1

    iget v0, v0, Lfdu;->b:I

    sub-int/2addr v0, v2

    invoke-direct {v3, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method
