.class final Lemo;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lemp;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 85
    new-instance v0, Lemp;

    invoke-direct {v0}, Lemp;-><init>()V

    iput-object v0, p0, Lemo;->b:Lemp;

    .line 88
    iput-object p1, p0, Lemo;->a:Ljava/lang/Appendable;

    .line 89
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lemo;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 98
    return-void
.end method

.method public write([CII)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lemo;->b:Lemp;

    iput-object p1, v0, Lemp;->a:[C

    .line 93
    iget-object v0, p0, Lemo;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lemo;->b:Lemp;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 94
    return-void
.end method
