.class public Ladz;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x22

.field private static b:Ladz;


# instance fields
.field private c:Lje;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ladz;
    .locals 1

    sget-object v0, Ladz;->b:Ladz;

    if-nez v0, :cond_0

    new-instance v0, Ladz;

    invoke-direct {v0}, Ladz;-><init>()V

    sput-object v0, Ladz;->b:Ladz;

    :cond_0
    sget-object v0, Ladz;->b:Ladz;

    return-object v0
.end method


# virtual methods
.method public a()Lje;
    .locals 1

    iget-object v0, p0, Ladz;->c:Lje;

    return-object v0
.end method

.method public a(Lje;)V
    .locals 0

    iput-object p1, p0, Ladz;->c:Lje;

    return-void
.end method
