#include "utils/Gyro.h"

using namespace wom;

#include <thread>
#include "AHRS.h"
class NavX::Impl {
 public:
  Impl() : ahrs(frc::SPI::kMXP) { }

 void Calibrate() {
    ahrs.Calibrate();
 }

  void Reset() {
    ahrs.Reset();
  }

  double GetAngle() const {
    return ahrs.GetAngle();
  }

  double GetRate() const {
     return ahrs.GetRate();
   }

  units::radian_t GetPitch() {
     return units::degree_t{ahrs.GetPitch()};
  }

  units::radian_t GetRoll() {
    return units::degree_t{ahrs.GetRoll()};
 }

  void SetAngle(units::radian_t offset) {
    Reset();
    this->offset = offset.convert<units::degree>().value();
  }
 private:
  AHRS ahrs;
  double offset;
};

