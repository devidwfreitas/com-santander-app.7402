.class public final Ldtq;
.super Lcps;


# static fields
.field public static final q:I = 0x3e8

.field public static final r:I = 0x3e9

.field public static final s:I = 0x3ea


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcps;-><init>()V

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcps;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GEOFENCE_NOT_AVAILABLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "GEOFENCE_TOO_MANY_GEOFENCES"

    goto :goto_0

    :pswitch_2
    const-string v0, "GEOFENCE_TOO_MANY_PENDING_INTENTS"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
