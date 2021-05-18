.class public Lali;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/StringBuffer;

.field b:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lali;->a:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lali;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lali;->a:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public a(Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lali;->a:Ljava/lang/StringBuffer;

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lali;->b:Ljava/util/Vector;

    return-void
.end method

.method public b()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lali;->b:Ljava/util/Vector;

    return-object v0
.end method
